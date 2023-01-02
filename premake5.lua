project "EABase"
    kind "None"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/**.h"
    }

    includedirs
    {
        "include"
    }

    defines
    {
        "_CHAR16T",
        "_CRT_SECURE_NO_WARNINGS"
    }

    filter { "options:relplat=windows10" }
        systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
