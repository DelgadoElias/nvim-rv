return {
    {
        "kylechui/nvim-surround",
        version = "*", -- usa la �ltima versi�n
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuraciones personalizadas aqu� si es necesario
            })
        end
    },
}