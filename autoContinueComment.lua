--auto_continue_comments.lua

--determine correct eol marker (later) from this lookup table
local eol_tbl = {[0]="\r\n", [1]="\r", [2]="\n"}

function auto_continue_comment(line)

    -- Multiline comment continue
    local multi = line:match("^(%s*)==%s*$")
    local eol = eol_tbl[editor.EOLMode]
    if multi then --line contains "==", start multiline comment
        editor:BeginUndoAction()
            editor:LineUp()
            editor:LineDelete()
            editor:AddText("--[=[" .. eol .. eol .. "--]=]" .. eol)
            editor:LineUp(); editor:LineUp()
            editor:AddText(multi)
        editor:EndUndoAction()

    -- block comment continue
    elseif line:find("^%s*%-%-%s*$") then --line is only '--', terminate comment
        editor:LineUp()
        editor:LineDelete()
    elseif line:find("^%s*#%s*$") then --line is only '# ', terminate comment
        editor:LineUp()
        editor:LineDelete()
    elseif line:find("^%s*//[%s~]*$") then --line is only '// ', terminate comment
        editor:LineUp()
        editor:LineDelete()
    elseif line:find("^%s*%-%-") then --line is comment, auto continue it
        editor:AddText("-- ")
    elseif line:find("^%s*#") then --line is comment, auto continue it
        editor:AddText("# ")
    elseif line:find("^%s*//[%s~]") then --line is comment, auto continue it
        editor:AddText("//~ ")
    elseif line:find("^%s*%*%s*") then --line is probably comment, auto continue it
        editor:AddText(" * ")
    elseif line:find("^%s*/%*%s?") then --line is probably comment, auto continue it
        editor:AddText(" * " .. eol .. " */" .. eol)
        editor:LineUp(); editor:LineUp()
    end

    return false --allow other methods to respond to event
end

--register handler with extman
scite_OnEditorLine(auto_continue_comment)
