-- Положить в: garrysmod/addons/zc_loadingscreen/lua/autorun/server/sv_loadingscreen.lua
-- Устанавливает загрузочный экран сервера.

if not SERVER then return end

-- ВАЖНО: замени на реальную ссылку на твой loading.html
local LOADING_URL = "https://YOUR-SITE.example/loading.html"

-- Можно использовать плейсхолдеры: %s = SteamID, %m = карта
hook.Add("Initialize", "zc_loadingscreen_set", function()
    RunConsoleCommand("sv_loadingurl", LOADING_URL)
    print("[LoadingScreen] sv_loadingurl = " .. LOADING_URL)
end)
