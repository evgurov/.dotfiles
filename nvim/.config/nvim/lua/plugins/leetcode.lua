return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        ---@type string
        arg = "leetcode.nvim",

        lang = "cpp",

        cn = { -- leetcode.cn
            enabled = false, ---@type boolean
            translator = true, ---@type boolean
            translate_problems = true, ---@type boolean
        },

        storage = {
            home = vim.fn.stdpath("data") .. "/leetcode",
            cache = vim.fn.stdpath("cache") .. "/leetcode",
        },

        plugins = {
            non_standalone = false,
        },

        logging = true,

        injector = {},
        cache = {
            update_interval = 60 * 60 * 24 * 7, ---@type integer 7 days
        },

        editor = {
            reset_previous_code = true, ---@type boolean
            fold_imports = true, ---@type boolean
        },

        console = {
            open_on_runcode = true, ---@type boolean

            dir = "row",

            size = {
                width = "90%",
                height = "75%",
            },

            result = {
                size = "60%",
            },

            testcase = {
                virt_text = true,

                size = "40%",
            },
        },

        description = {
            position = "left",
            width = "40%",
            show_stats = true,
        },

        picker = { provider = nil },

        hooks = {
            ---@type fun()[]
            ["enter"] = {},

            ["question_enter"] = {},

            ---@type fun()[]
            ["leave"] = {},
        },

        keys = {
            toggle = { "q" }, ---@type string|string[]
            confirm = { "<CR>" }, ---@type string|string[]

            reset_testcases = "r", ---@type string
            use_testcase = "U", ---@type string
            focus_testcases = "H", ---@type string
            focus_result = "L", ---@type string
        },

        theme = {},

        ---@type boolean
        image_support = false,
    },
}
