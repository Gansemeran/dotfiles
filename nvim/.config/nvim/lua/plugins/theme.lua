function SetTheme()
	local color = "rose-pine-moon"
	vim.cmd.colorscheme(color)
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                --disable_background = false,
                --styles = {
					--italic = false,
                --},
            })

            SetTheme();
        end
    },
}
