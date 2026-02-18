{pkgs, ...}: {
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "super-tab";
        };
        snippets = {
          preset = "luasnip";
        };
        appearance = {
          use_nvim_cmp_as_default = false;
          nerd_font_variant = "mono";
        };
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
            };
          };
          menu = {
            draw = {
              treesitter = ["lsp"];
            };
          };
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 200;
          };
          ghost_text = {
            enabled = false;
          };
        };
        sources = {
          default = ["lsp" "path" "snippets" "buffer"];
        };
        signature = {
          enabled = true;
        };
      };
    };

    luasnip = {
      enable = true;
      lazyLoad.settings.event = "InsertEnter";
    };

    friendly-snippets = {
      enable = true;
    };

    treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        nix
        go
        rust
        markdown
        bash
        html
        css
        typescript
        tsx
        astro
      ];
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };

    lsp = {
      enable = true;
      capabilities = "require('blink.cmp').get_lsp_capabilities()";

      servers = {
        nil_ls.enable = true;
        gopls.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        marksman.enable = true;
        html.enable = true;
        cssls.enable = true;
        ts_ls.enable = true;
        astro.enable = true;
        tailwindcss.enable = true;
        volar.enable = true;
        biome.enable = true;
      };

      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };

    lspkind = {
      enable = true;
      lazyLoad.settings.event = "InsertEnter";
    };

    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_format = "fallback";
          timeout_ms = 500;
        };
        formatters_by_ft = {
          nix = ["alejandra"];
          rust = ["rustfmt"];
          markdown = ["oxfmt"];
          typescript = ["biome"];
          javascript = ["biome"];
          typescriptreact = ["biome"];
          javascriptreact = ["biome"];
          html = ["oxfmt"];
          css = ["oxfmt"];
          json = ["oxfmt"];
          astro = ["biome"];
          vue = ["biome"];
          bash = ["shfmt"];
        };
        formatters = {
          oxfmt = {
            command = "${pkgs.oxfmt}/bin/oxfmt";
            args = ["--stdin-filepath" "$FILENAME"];
          };
        };
      };
      lazyLoad.settings.event = ["BufReadPost" "BufNewFile"];
    };

    render-markdown = {
      enable = true;
      settings = {
        file_types = ["markdown" "mdx"];
      };
      lazyLoad.settings.ft = ["markdown" "mdx"];
    };
  };

  keymaps = [
    {
      key = "<leader>uf";
      mode = "n";
      action = "<cmd>lua require('conform').format()<CR>";
      options = {
        silent = true;
        desc = "Format buffer";
      };
    }
  ];
}
