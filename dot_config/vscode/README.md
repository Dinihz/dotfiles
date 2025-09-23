# VSCode Configuration

This file documents the settings used in Visual Studio Code to optimize the development experience.

## Credits

This configuration was inspired and adapted from my fav youtuber:

- [Lazar Nikolov](https://www.youtube.com/@nikolovlazar)

## Main Extensions

- **Vim**: Enhanced Vim experience.
- **Color Highlight**: Highlights color codes in your files.
- **ES7+ React/Redux/GraphQL/React-Native snippets**: Useful snippets for modern JavaScript.
- **Live Server**: Enables real-time web development.
- **Prettier**: Automatic code formatting.

## User Settings (`settings.json`)

```json
{
  "editor.fontFamily": "Cascadia Code",
  "editor.fontSize": 15,
  "editor.cursorWidth": 3,
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.minimap.enabled": false,
  "workbench.iconTheme": "vscode-icons",
  "workbench.editor.showTabs": "multiple",
  "workbench.sideBar.location": "right",
  "workbench.colorTheme": "Tokyo Night nv",

  "editor.lineNumbers": "relative",
  "editor.renderWhitespace": "all",
  "editor.rulers": [80, 120],

  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "editor.detectIndentation": false,
  "files.trimTrailingWhitespace": true,
  "files.insertFinalNewline": true,
  "files.eol": "\n",
  "editor.formatOnSave": true,


  "vim.cursorStylePerMode.insert": "line-thin",
  "vim.cursorStylePerMode.normal": "block",
  "vim.cursorStylePerMode.replace": "block-outline",
  "vim.easymotion": true,
  "vim.targets.enable": true,
  "vim.foldfix": true,
  "vim.handleKeys": {
    "<C-d>": true,
    "<C-s>": false,
    "<C-z>": false
  },
  "database-client.autoSync": true,
  "vsicons.dontShowNewVersionMessage": true,
}

  }
}
```

## Keyboard Shortcuts (`keybindings.json`)

```json
[
  // Navigation
  {
    "key": "ctrl-h",
    "command": "workbench.action.navigateLeft"
  },
  {
    "key": "ctrl-l",
    "command": "workbench.action.navigateRight"
  },
  {
    "key": "ctrl-k",
    "command": "workbench.action.navigateUp"
  },
  {
    "key": "ctrl-j",
    "command": "workbench.action.navigateDown"
  },
  {
    "key": "space ,",
    "command": "workbench.action.showAllEditors",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)"
  },
  {
    "key": "space e",
    "command": "runCommands",
    "args": {
      "commands": [
        "workbench.action.toggleSidebarVisibility",
        "workbench.files.action.focusFilesExplorer"
      ]
    },
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus) && !sideBarFocus"
  },
  {
    "key": "space e",
    "command": "runCommands",
    "args": {
      "commands": [
        "workbench.action.toggleSidebarVisibility",
        "workbench.action.focusActiveEditorGroup"
      ]
    },
    "when": "sideBarFocus && !inputFocus"
  },
  {
    "key": "space e",
    "when": "vim.mode == 'Normal' && editorTextFocus && foldersViewVisible",
    "command": "workbench.action.toggleSidebarVisibility"
  },
  {
    "key": "tab",
    "command": "workbench.action.nextEditorInGroup",
    "when": "(vim.mode == 'Normal' || vim.mode == 'Visual') && (editorTextFocus || !inputFocus)"
  },
  {
    "key": "shift-tab",
    "command": "workbench.action.previousEditorInGroup",
    "when": "(vim.mode == 'Normal' || vim.mode == 'Visual') && (editorTextFocus || !inputFocus)"
  },
  {
    "key": "s h",
    "command": "workbench.action.splitEditor",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)"
  },
  {
    "key": "s v",
    "command": "workbench.action.splitEditorDown",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)"
  },

  // Coding
  {
    "key": "space c a",
    "command": "editor.action.codeAction",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "shift-k",
    "command": "editor.action.moveLinesUpAction",
    "when": "vim.mode == 'VisualLine' && editorTextFocus"
  },
  {
    "key": "shift-j",
    "command": "editor.action.moveLinesDownAction",
    "when": "vim.mode == 'VisualLine' && editorTextFocus"
  },
  {
    "key": "shift-k",
    "command": "editor.action.showHover",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "space c r",
    "command": "editor.action.rename",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "space c s",
    "command": "workbench.action.gotoSymbol",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "space b d",
    "command": "workbench.action.closeActiveEditor",
    "when": "(vim.mode == 'Normal' && editorTextFocus) || !inputFocus"
  },
  {
    "key": "space space",
    "command": "workbench.action.quickOpen",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)"
  },
  {
    "key": "g r",
    "command": "editor.action.goToReferences",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "g i",
    "command": "editor.action.goToImplementation",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "space g g",
    "command": "runCommands",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)",
    "args": {
      "commands": ["workbench.view.scm", "workbench.scm.focus"]
    }
  },
  {
    "key": "space s g",
    "command": "workbench.action.findInFiles",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus)"
  },
  {
    "key": "ctrl-n",
    "command": "editor.action.addSelectionToNextFindMatch",
    "when": "(vim.mode == 'Normal' || vim.mode == 'Visual') && (editorTextFocus || !inputFocus)"
  },

  // File Explorer
  {
    "key": "r",
    "command": "renameFile",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "c",
    "command": "filesExplorer.copy",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "p",
    "command": "filesExplorer.paste",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "x",
    "command": "filesExplorer.cut",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "d",
    "command": "deleteFile",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "a",
    "command": "explorer.newFile",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "shift-a",
    "command": "explorer.newFolder",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "s",
    "command": "explorer.openToSide",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
  },
  {
    "key": "shift-s",
    "command": "runCommands",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus",
    "args": {
      "commands": [
        "workbench.action.splitEditorDown",
        "explorer.openAndPassFocus",
        "workbench.action.closeOtherEditors"
      ]
    }
  },
  {
    "key": "enter",
    "command": "explorer.openAndPassFocus",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && !explorerResourceIsFolder && !inputFocus"
  },
  {
    "key": "enter",
    "command": "list.toggleExpand",
    "when": "filesExplorerFocus && foldersViewVisible && !explorerResourceIsRoot && explorerResourceIsFolder && !inputFocus"
  },

  // Debug
  {
    "key": "space d a",
    "command": "workbench.action.debug.selectandstart",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus) && debuggersAvailable"
  },
  {
    "key": "space d t",
    "command": "workbench.action.debug.stop",
    "when": "vim.mode == 'Normal' && editorTextFocus && inDebugMode && !focusedSessionIsAttached"
  },
  {
    "key": "space d o",
    "command": "workbench.action.debug.stepOver",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus) && inDebugMode && debugState == 'stopped'"
  },
  {
    "key": "space d b",
    "command": "editor.debug.action.toggleBreakpoint",
    "when": "vim.mode == 'Normal' && editorTextFocus"
  },
  {
    "key": "space d e",
    "command": "editor.debug.action.showDebugHover",
    "when": "vim.mode == 'Normal' && editorTextFocus && inDebugMode && debugState == 'stopped'"
  },
  {
    "key": "space d c",
    "command": "workbench.action.debug.continue",
    "when": "vim.mode == 'Normal' && (editorTextFocus || !inputFocus) && inDebugMode && debugState == 'stopped'"
  }
]
```
