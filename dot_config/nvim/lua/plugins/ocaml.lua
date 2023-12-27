return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ocamllsp = {
        cmd = { "ocamllsp" },
        filetypes = { "ocaml", "ocaml.interface", "ocaml.ocamllex", "ocaml.menhir" },
        root_dir = require("lspconfig.util").root_pattern("*.opam", "esy.json", "package.json", "esy.lock", ".git"),
        mason = false,
      },
    },
  },
}
