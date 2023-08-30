local servers = {
    'phpactor',
    'vuels',
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

    vetur = {
        ignoreProjectWarning = true
    },
}

local commands = {
    phpactor = {
        "phpactor",
        "language-server",
    }
}

for _, value in ipairs(servers) do
    RegisterLsp(value, settings, commands[value])
end
