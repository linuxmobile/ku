# ku (空)

> Harnessing negative space to frame your logic. An interface that recedes to let code breathe.

<img width="1427" height="1066" alt="image" src="https://github.com/user-attachments/assets/4c2b3c65-7230-4d2c-a299-d118eebee425" />


In the pursuit of clarity, we often find ourselves adding layers of syntax, clusters of icons, and a cacophony of status lines. ku is an exercise in the opposite. It is a Neovim configuration built for the Nix ecosystem that treats emptiness not as a vacuum, but as a state of pure potential.

Inspired by the Buddhist concept of _Sūnyatā_, this environment is designed for those who believe that the most powerful tool is the one that disappears when the work begins.

### The Philosophy

We built ku to resolve the tension between engineering and design. In modern development, the editor is often a cluttered dashboard. ku is a curated gallery.

By leveraging the reproducible architecture of NixVim, we have crafted a workspace that is both reliable and quiet. It is an editorial approach to code where every plugin is a deliberate choice and every pixel of padding is an intentional breath.

- **Design as Discipline.** A visual language that favors subtle contrasts and typography over visual noise.
- **Performance as Silence.** Aggressive byte-compilation and optimized plugin loading ensure the editor moves at the speed of thought.
- **The Void.** An interface that yields to the logic of your project, allowing the code to dictate the atmosphere.

### The Craftsmanship

The toolkit we have assembled is not a collection of features, but a cohesive atelier. We chose these components for their restraint and their ability to stay out of the way until they are needed.

#### The Core (Mini.nvim)

We rely heavily on the Mini ecosystem. It provides the essential structure of the editor: a focused file explorer, a quiet status line, and the subtle mechanics of text manipulation. It replaces bulkier alternatives with lean, logical modules that feel like native parts of the editor.

#### The Intelligence (Blink.cmp & LSP)

Completion should feel like an intuition, not an interruption. Blink.cmp offers a modern, high-speed interface for logic suggestions, while our LSP configuration is tuned for languages like Nix, Rust, and Go. It provides the depth of an IDE without the visual weight.

#### The Toolkit

A detailed inventory of the components that power this environment.

<details>
<summary>View the complete plugin list</summary>

**Interface & Visuals**

- **fleur.nvim**: The primary colorscheme and visual foundation.
- **snacks.nvim**: Handles animations, dimming, indent guides, and the picker.
- **mini.nvim**: Modular core (icons, statusline, tabline, files, cursorword, jump2d).
- **dressing.nvim**: Enhanced UI for inputs and selects.
- **nvim-colorizer.lua**: High-performance color highlighter.
- **render-markdown.nvim**: Polished markdown rendering within the buffer.

**Navigation & Search**

- **fff.nvim**: High-speed Rust-powered file picker and search.
- **which-key.nvim**: Command discovery and keybinding documentation.
- **vim-visual-multi**: Multiple cursors support for parallel editing.
- **mini.jump2d**: Efficient 2D navigation across the screen.

**Language & Logic**

- **nvim-treesitter**: Incremental parsing for syntax highlighting and structural navigation.
- **blink.cmp**: Modern, asynchronous completion engine.
- **lsp**: Built-in LSP client with support for Nix (nil_ls), Go (gopls), Rust (rust_analyzer), and more.
- **lspsaga.nvim**: Refined UI for LSP diagnostics, hover, and actions.
- **conform.nvim**: Formatter management (supporting alejandra, rustfmt, oxfmt, biome).
- **luasnip**: Snippet engine with friendly-snippets integration.
- **lspkind.nvim**: Pictograms for completion items.
- **todo-comments.nvim**: Highlights and searches for workspace comments.

**Git & Workspace**

- **gitsigns.nvim**: Git integration for the sign column and line blame.
- **neogit**: A powerful Git interface inspired by Magit.
- **mini.diff**: Efficient in-buffer diff management.
- **sidekick.nvim**: External CLI integration for Zellij and various AI tools.
- **vim-illuminate**: Automatically highlights other uses of the word under the cursor.

</details>

### The Ritual

To integrate ku into your workflow is to embrace a more intentional way of computing. Whether you are visiting for a session or making it your permanent home, the entry is seamless.

#### The Temporary Visit

For a moment of focused work without commitment, invoke the void directly:

```bash
nix run github:linuxmobile/nixvim
```

#### The Permanent Stay

To weave ku into your own NixOS or Home Manager tapestry, add it to your flake inputs:

```nix
{
  inputs.ku.url = "github:linuxmobile/nixvim";

  outputs = { self, ku, ... }: {
    # Access the package via ku.packages.${system}.default
  };
}
```

### The Quietude

This is not just a configuration; it is a commitment to a quieter, more focused creative life. We invite you to let the interface recede. Let the logic speak.

_Crafted with intention. Designed for the void._
