local servers = {
    'phpactor',
}

local settings = {
    phpactor = {
        language_server_psalm = {
            enabled = true,
            bin = 'psalm',
        },
        phpunit = {
            enabled = true,
        },
    },
}

local commands = {
    phpactor = {
        -- "phpactor",
        "/Users/avrahamappel/forks/phpactor/bin/phpactor",
        "language-server",
    }
}

for _, value in ipairs(servers) do
    RegisterLsp(value, settings, commands[value])
end
