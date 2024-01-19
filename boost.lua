_G.WaitPerAmount = 3000
_G.Settings = {
    Players = {
            ["Ignore Me"] = false,
            ["Ignore Others"] = false,
        },
        Meshes = {
            NoMesh = false,
            NoTexture = true,
            Destroy = false,
	    LowDetail = true
        },
        Images = {
            Invisible = true,
            Destroy = false
        },
        Particles = {
            Invisible = true,
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
            ["Reset Materials"] = true,
            ["Lower Quality MeshParts"] = true
        }
loadstring(game:HttpGet("https://raw.githubusercontent.com/SirShinHub/UtilityTools/main/fpsboostLIB.lua"))()
