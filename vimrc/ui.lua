registerLsps {
    lsps = { 'angularls' },
    root_dirs = {
        angularls = require("lspconfig").util.root_pattern("apps/hr-angular/project.json")
    }
}
