project "lua"
    kind "StaticLib"

    files { "*.c", "*.cpp", "*.h", "*.hpp" }
    removefiles { "lua.c", "luac.c" }

    configuration "vs*"	
        buildoptions { "/TP" }

    configuration "not vs*"	
        buildoptions { "-x c++" }
