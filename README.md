# harpoon-highlight-current-file
A small plugin to highlight the current file in the [Harpoon v2](https://github.com/ThePrimeagen/harpoon) quick menu.

The plugin moves the cursor to the line containing the filename of the current buffer and highlights it.

![image](https://github.com/ThePrimeagen/harpoon/assets/543561/d901b32f-fa7f-42aa-a2ea-a4e8db701ec6)

## Installation
### Using [Lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    "pockata/harpoon-highlight-current-file",
    dependencies = { "ThePrimeagen/harpoon" },
    config = function()
        require("harpoon-highlight-current-file").setup()
    end,
},
```

## Highlight groups
As a good default the `HarpoonCurrentFile` highlight group is linked to `String`

To change the default highlight, add the following command to your config:  
`highlight HarpoonCurrentFile guifg=red`

## License
MIT
