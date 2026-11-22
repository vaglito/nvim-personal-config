local path = vim.fn.stdpath("config") .. "/lsp-servers.txt"
local servers = {}

for _, line in ipairs(vim.fn.readfile(path)) do
	local server = line:gsub("#.*$", ""):match("^%s*(.-)%s*$")
	if server and server ~= "" then
		table.insert(servers, server)
	end
end

return servers
