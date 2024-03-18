vim.opt.indentexpr = GetNixIndent()

local function GetNixIndent()
   let prevlnum = vim.fn.prevnonblank()
end
