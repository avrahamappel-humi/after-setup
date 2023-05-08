local servers = {
    'angularls',
    'eslint',
    'tsserver',
}

for _, value in ipairs(servers) do
    RegisterLsp(value, {})
end
