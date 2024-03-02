project "ImGui"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
	objdir ("bin-int/" .. OutputDir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imgui.cpp",
		"imgui.h",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h"
	}

	filter "system:windows"
		systemversion "latest"
        defines { "_CRT_SECURE_NO_WARNINGS", "IMGUI_IMPL_OPENGL_LOADER_CUSTOM" }

	filter "system:linux"
		systemversion "latest"
		staticruntime "on"
		pic "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
