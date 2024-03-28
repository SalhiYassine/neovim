require("remaps")
require("/after")

function PathToJestTestConfig()
	local file = vim.fn.expand("%:p")
	local srcIndex = file:find("/src/", 1, true)
	if srcIndex then
		local basePath = file:sub(1, srcIndex)
		local path = basePath .. "jest.config.ts"
		print(path)
		return path
	else
		local path = vim.fn.getcwd() .. "/jest.config.ts"
		print(path)
		return path
	end
end
