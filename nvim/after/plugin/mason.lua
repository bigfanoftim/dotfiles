local status, mason = pcall(require, "mason")
if (not status) then
  print("mason not found")
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
