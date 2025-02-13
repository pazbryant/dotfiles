local function notify(content)
	return ya.notify({
		title = "Set Background",
		content = content,
		timeout = 5,
	})
end

local get_hovered_url = ya.sync(function()
	local tab = cx.active
	if not tab or not tab.current or not tab.current.hovered then
		return nil
	end

	return tostring(tab.current.hovered.url)
end)

local function save_wallpaper_url(url)
	local fehbg_file = "/home/bryant/.fehbg"
	local feh_command = string.format("feh --bg-fill '%s'\n", url)

	-- Attempt to open the file and handle potential errors
	local file, err = io.open(fehbg_file, "w")
	if not file then
		notify("Error: Could not open or create the file: " .. err)
		return
	end

	-- Attempt to write the command to the file and handle any issues
	local success, write_err = pcall(function()
		file:write(feh_command)
	end)

	if not success then
		notify("Error: Failed to write to the file: " .. write_err)
		file:close()
		return
	end

	-- Close the file after writing
	file:close()
end

local function set_background()
	local url = get_hovered_url()

	if not url or #url == 0 then
		return notify("No hovered file found")
	end

	local feh_command = string.format("feh --bg-fill '%s'", url)
	local handle = io.popen(feh_command)

	if not handle then
		notify("Error: Failed to execute the feh command.")
		return
	end

	local success, exit_code = handle:close()
	save_wallpaper_url(url)

	if success then
		notify("Background successfully set!")
	else
		notify("Error: " .. tostring(exit_code or "unknown"))
	end
end

return {
	entry = set_background,
}
