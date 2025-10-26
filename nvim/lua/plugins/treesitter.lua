return {
    "nvim-treesitter/nvim-treesitter",
    opts = {ensure_installed = 'latex',"c_sharp","python",},
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end
}

