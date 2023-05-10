local servers = {
    'angularls',
    'eslint',
    'tsserver',
}

local root_dirs = {
    angularls = require("lspconfig").util.root_pattern("apps/hr-angular/project.json")
}

for _, value in ipairs(servers) do
    RegisterLsp(value, {}, nil, root_dirs[value])
end
