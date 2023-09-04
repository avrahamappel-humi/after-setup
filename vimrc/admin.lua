registerLsps {
    lsps = {
        'phpactor',
        'vuels',
    },
    settings = {
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
}
