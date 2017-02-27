-- -*- coding: utf-8 -

-- -------------------------------------------------------------------------------------------------------
-- git
-- affiche dans la console les informations relatives a git pour le fichier courant
-- -------------------------------------------------------------------------------------------------------


idx =  40
props['command.name.'..idx..'.*'] ="Git Status"
props['command.'..idx..'.*'] ="git status"
props['command.subsystem.'..idx..'.*'] ="0"
props['command.shortcut.'..idx..'.*'] ="Ctrl+Shift+G"
props['command.mode.'..idx..'.*'] ="savebefore:yes"

_ALERT(outputModuleMessage('[module] Git Status, menu > '..props['command.name.'..idx..'.*'] , "044git.lua"))

-- ajouter dans le menu contextuel
if (withUtils_menucontextuel==1) then  -- cf 015utils.lua
    table.insert(menucontextuel, "|") -- séparateur
    table.insert(menucontextuel, "Git Status|11"..idx) -- 11 est absolument nécessaire
end


idx =  41
props['command.name.'..idx..'.*'] ="Git add current file"
props['command.'..idx..'.*'] ="git add  $(FileNameExt)"
props['command.subsystem.'..idx..'.*'] ="0"
props['command.shortcut.'..idx..'.*'] ="Ctrl+Shift+A"
props['command.mode.'..idx..'.*'] ="savebefore:yes"

_ALERT(outputModuleMessage('[module] Git add current file, menu > '..props['command.name.'..idx..'.*'] , "044git.lua"))

-- ajouter dans le menu contextuel
if (withUtils_menucontextuel==1) then  -- cf 015utils.lua
    table.insert(menucontextuel, "Git add current file|11"..idx) -- 11 est absolument nécessaire
end


idx =  42
props['command.name.'..idx..'.*'] ="Git commit"
props['command.'..idx..'.*'] ="git commit"
props['command.subsystem.'..idx..'.*'] ="0"
props['command.shortcut.'..idx..'.*'] ="Ctrl+Shift+C"
props['command.mode.'..idx..'.*'] ="savebefore:yes"

_ALERT(outputModuleMessage('[module] Git commit, menu > '..props['command.name.'..idx..'.*'] , "044git.lua"))

-- ajouter dans le menu contextuel
if (withUtils_menucontextuel==1) then  -- cf 015utils.lua
    table.insert(menucontextuel, "Git commit|11"..idx) -- 11 est absolument nécessaire
end


idx =  43
props['command.name.'..idx..'.*'] ="Git diff current file"
props['command.'..idx..'.*'] ="git diff $(FileNameExt)"
props['command.subsystem.'..idx..'.*'] ="0"
props['command.shortcut.'..idx..'.*'] ="Ctrl+Shift+D"
props['command.mode.'..idx..'.*'] ="savebefore:yes"

_ALERT(outputModuleMessage('[module] Git diff current file, menu > '..props['command.name.'..idx..'.*'] , "044git.lua"))

-- ajouter dans le menu contextuel
if (withUtils_menucontextuel==1) then  -- cf 015utils.lua
    table.insert(menucontextuel, "Git diff current file|11"..idx) -- 11 est absolument nécessaire
end

idx =  44
props['command.name.'..idx..'.*'] ="Git push"
props['command.'..idx..'.*'] ="git push -u origin master"
props['command.subsystem.'..idx..'.*'] ="0"
--~ props['command.shortcut.'..idx..'.*'] ="Ctrl+Shift+D"
props['command.mode.'..idx..'.*'] ="savebefore:yes"

_ALERT(outputModuleMessage('[module] Git push, menu > '..props['command.name.'..idx..'.*'] , "044git.lua"))

-- ajouter dans le menu contextuel
if (withUtils_menucontextuel==1) then  -- cf 015utils.lua
    table.insert(menucontextuel, "Git push|11"..idx) -- 11 est absolument nécessaire
end


