print("Loading platform-testing.lua")

function IsWithinAlgomoPlatform()
	local file = vim.fn.expand("%:p")
	local srcIndex = file:find("/algomo/repos/platform/", 1, true)
	if srcIndex then
		return true
	end
	return false
end

function SetUpAlgomoPlatformKeymaps()
	local function map(lhs, rhs, opts)
		vim.keymap.set("n", lhs, rhs, opts or {})
	end

	local testServerTypesCommand = 'clear && docker exec -it server sh -c "cd api/server && yarn typecheck "'
	map("<leader>tt", function()
		local isWithinAlgomoPlatform = IsWithinAlgomoPlatform()
		if isWithinAlgomoPlatform then
			local t = require("toggleterm")
			t.setup({
				shell = "/bin/zsh",
				direction = "float",
			})
			return t.exec(testServerTypesCommand)
		end
	end)

	local testPlatformCommand = 'clear && docker exec -it server sh -c "cd api/server && yarn test:local "'
	map("<leader>wt", function()
		local isWithinAlgomoPlatform = IsWithinAlgomoPlatform()
		if isWithinAlgomoPlatform then
			local t = require("toggleterm")
			t.setup({
				shell = "/bin/zsh",
				direction = "float",
			})
			return t.exec(testPlatformCommand)
		end
	end)

	map("<leader>ft", function()
		local isWithinAlgomoPlatform = IsWithinAlgomoPlatform()
		if isWithinAlgomoPlatform then
			local t = require("toggleterm")
			t.setup({
				shell = "/bin/zsh",
				direction = "float",
			})
			local fileName = vim.fn.expand("%:t")
			local command = testPlatformCommand .. "--testPathPattern=" .. fileName
			return t.exec(command)
		end
	end)
end

SetUpAlgomoPlatformKeymaps()
