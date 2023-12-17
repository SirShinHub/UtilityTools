_G.WaitPerAmount = 1000
_G.Settings = {
    Players = {
            ["Ignore Me"] = true,
            ["Ignore Others"] = true,
        },
        Meshes = {
            NoMesh = false,
            NoTexture = false,
            Destroy = false,
		LowDetail = true
        },
        Images = {
            Invisible = true,
            Destroy = false
        },
        Particles = {
            Invisible = false,
            Destroy = false
        },
        TextLabels = {
            LowerQuality = false,
            Invisible = false,
            Destroy = false
        },
        MeshParts = {
            LowerQuality = false,
            Invisible = false,
            NoTexture = false,
            NoMesh = false,
            Destroy = false
        },
	    ["No Explosions"] = true,	
	    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparksle
            ["FPS Cap"] = 144, -- Set this true to uncap FPS
            ["No Camera Effects"] = true,
            ["No Clothes"] = true,
            ["Low Water Graphics"] = false,
            ["No Shadows"] = true,
            ["Low Rendering"] = true,
            ["Low Quality Parts"] = true,
            ["Low Quality Models"] = true,
            ["Reset Materials"] = false,
            ["Lower Quality MeshParts"] = true
        }
loadstring(game:HttpGet("https://raw.githubusercontent.com/SirShinHub/UtilityTools/main/fpsboostLIB.lua"))()
