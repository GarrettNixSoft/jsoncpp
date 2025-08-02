project "jsoncpp"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files {
		"include/**.h",
		"src/**.h",
		"src/**.cpp",
		"src/**.dict"
	}
	
	filter "system:windows"
	systemversion "latest"
	cppdialect "C++17"
	staticruntime "On"
	
	filter { "system:windows", "configuration:Release" }
		buildoptions "/MT"