return {
    {
        "kylechui/nvim-surround",
        version = "*", -- usa la última versión
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuraciones personalizadas aquí si es necesario
            })
        end
    },
}