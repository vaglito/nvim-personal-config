vim.g.mapleader = ' ' -- use space

vim.keymap.set("n", "<leader><leader>", function()
    local buf_name = vim.api.nvim_buf_get_name(0)
    local ext = buf_name:match("^.+(%..+)$") or ""

    local valid_exts = { ".vim", ".vimrc", ".lua" }

    local can_source = false
    for _, v in ipairs(valid_exts) do
        if ext == v then
            can_source = true
            break
        end
    end

    if can_source then
        vim.cmd("so")
        print("Source ejecutado correctamente.")
    end
end, { desc = "Source solo archivos compatibles" })

-- GUARDAR ARCHIVO RÁPIDO
vim.keymap.set('n', '<leader>w', function()
    print("Guardando archivo...")
    vim.cmd.w()
    print("¡Guardado!")
end, { desc = "Guardar cambios" })

-- SALIR DEL ARCHIVO
vim.keymap.set('n', '<leader>q', function()
    print("Saliendo del archivo...")
    vim.cmd.q()
end, { desc = "Salir del archivo" })
