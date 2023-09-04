registerLsps {
    lsps = { 'phpactor' },
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
    }
}
