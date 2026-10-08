vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4

-- Keymaps
local map = vim.keymap.set
local opts = { buffer = true, silent = true }

local function o(desc)
  return vim.tbl_extend("force", opts, { desc = desc })
end

local function prompt(desc)
  return vim.tbl_extend("force", opts, { desc = desc, silent = false })
end

-- Which-key group labels (buffer-local)
local ok, wk = pcall(require, "which-key")
if ok then
  wk.add({
    { "<leader>cg", group = "gradle", icon = "", buffer = 0 },
    { "<leader>ce", group = "device", icon = "󰓷", buffer = 0 },
    { "<leader>cL", group = "logcat", icon = "🐈", buffer = 0 },
    { "<leader>ck", group = "kotlin lsp", icon = "", buffer = 0 },
    { "<leader>cK", group = "lsp server", icon = "", buffer = 0 },
    { "<leader>ct", group = "studio", icon = "󰀴", buffer = 0 },
  })
end

-- Gradle
map("n", "<leader>cgb", "<cmd>DroidBuild<cr>", o("Build APK"))
map("n", "<leader>cgr", "<cmd>DroidRun<cr>", o("Run (Build, Install, Launch)"))
map("n", "<leader>cgc", "<cmd>DroidClean<cr>", o("Clean"))
map("n", "<leader>cgs", "<cmd>DroidSync<cr>", o("Sync Dependencies"))
map("n", "<leader>cgt", ":DroidTask ", prompt("Run Gradle Task"))
map("n", "<leader>cgx", "<cmd>DroidGradleStop<cr>", o("Stop Gradle Task"))
map("n", "<leader>cgm", "<cmd>DroidGradleModule<cr>", o("Open Module build.gradle"))
map("n", "<leader>cgp", "<cmd>DroidGradleProject<cr>", o("Open Project build.gradle"))
map("n", "<leader>cgS", "<cmd>DroidGradleSettings<cr>", o("Open settings.gradle"))
map("n", "<leader>cgv", "<cmd>DroidGradleVersion<cr>", o("Open libs.versions.toml"))

-- Logcat
map("n", "<leader>cLl", "<cmd>DroidLogcat<cr>", o("Open Logcat"))
map("n", "<leader>cLf", "<cmd>DroidLogcatFilter<cr>", o("Filter Logcat"))
map("n", "<leader>cLc", "<cmd>DroidLogcatClear<cr>", o("Clear Logcat"))
map("n", "<leader>cLx", "<cmd>DroidLogcatStop<cr>", o("Stop Logcat"))

-- Kotlin LSP
map("n", "<leader>cko", "<cmd>DroidImports<cr>", o("Organize Imports"))
map("n", "<leader>ckf", "<cmd>DroidFormat<cr>", o("Format Buffer"))
map("x", "<leader>ckf", ":DroidFormat<cr>", o("Format Selection"))
map("n", "<leader>cks", "<cmd>DroidSymbols<cr>", o("Document Symbols"))
map("n", "<leader>ckS", "<cmd>DroidWorkspaceSymbols<cr>", o("Workspace Symbols"))
map("n", "<leader>ckr", "<cmd>DroidReferences<cr>", o("References"))
map("n", "<leader>ckR", "<cmd>DroidRename<cr>", o("Rename Symbol"))
map("n", "<leader>ckF", "<cmd>DroidRenameFile<cr>", o("Rename File"))
map("n", "<leader>cka", "<cmd>DroidCodeAction<cr>", o("Code Action"))
map("n", "<leader>ckq", "<cmd>DroidQuickFix<cr>", o("Quick Fix Line"))
map("n", "<leader>cki", "<cmd>DroidCallHierarchy incoming<cr>", o("Incoming Calls"))
map("n", "<leader>ckI", "<cmd>DroidCallHierarchy outgoing<cr>", o("Outgoing Calls"))
map("n", "<leader>ckt", "<cmd>DroidTypeHierarchy subtypes<cr>", o("Subtypes"))
map("n", "<leader>ckT", "<cmd>DroidTypeHierarchy supertypes<cr>", o("Supertypes"))
map("n", "<leader>ckk", "<cmd>DroidKdoc<cr>", o("Generate KDoc"))
map("n", "<leader>ckh", "<cmd>DroidInlayHintsToggle<cr>", o("Toggle Inlay Hints"))
map("n", "<leader>ckH", "<cmd>DroidHintsToggle<cr>", o("Toggle Hint Diagnostics"))

-- LSP server management
map("n", "<leader>cKr", "<cmd>DroidLspRefresh<cr>", o("Re-import Project Model"))
map("n", "<leader>cKl", "<cmd>DroidLspLog<cr>", o("Project Sync Log"))
map("n", "<leader>cKR", "<cmd>DroidLspRestart<cr>", o("Restart LSP Servers"))
map("n", "<leader>cKs", "<cmd>DroidLspStop<cr>", o("Stop LSP Servers"))
map("n", "<leader>cKe", "<cmd>DroidExportWorkspace<cr>", o("Export Workspace JSON"))
map("n", "<leader>cKc", "<cmd>DroidCleanWorkspace<cr>", o("Clean Cached Workspaces"))

-- Android Studio
map("n", "<leader>ctl", "<cmd>DroidLint<cr>", o("Studio Lint"))
map("n", "<leader>ctd", "<cmd>DroidDeclaration<cr>", o("Go to Declaration"))
map("n", "<leader>ctu", "<cmd>DroidUsages<cr>", o("Usages (Quickfix)"))
map("n", "<leader>ctv", ":DroidVersions ", prompt("Lookup Latest Versions"))
map("n", "<leader>cto", "<cmd>DroidStudioOpen<cr>", o("Open in Android Studio"))
