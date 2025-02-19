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
  "editor.fontFamily": "Hack Nerd Font Mono",
  "workbench.iconTheme": "vscode-icons",
  "workbench.editor.showTabs": "multiple",
  "workbench.sideBar.location": "right",
  "workbench.colorTheme": "Tokyo Night",
  "workbench.preferredDarkColorTheme": "Tokyo Night",
  "workbench.preferredHighContrastColorTheme": "Tokyo Night",
  "editor.cursorSmoothCaretAnimation": "on",
  "editor.tabSize": 2,
  "window.zoomLevel": 2,
  "editor.suggestOnTriggerCharacters": true,
  "editor.fontSize": 14,
  "editor.lineHeight": 24,
  "editor.fontWeight": "300",
  "editor.cursorWidth": 5,
  "editor.fontLigatures": true,
  "editor.formatOnPaste": true,
  "editor.formatOnSave": true,
  "editor.tabCompletion": "on",
  "editor.minimap.enabled": false,
  "workbench.editor.editorActionsLocation": "hidden",
  "workbench.layoutControl.enabled": false,
  "window.commandCenter": false,
  "breadcrumbs.enabled": false,
  "workbench.activityBar.location": "hidden",
  "editor.quickSuggestions": {
    "comments": "on",
    "strings": "on",
    "other": "on"
  },
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": [
          //following will be in italic
          "comment",
          "entity.name.type.class", //class names
          "keyword", //import, export, return…
          "constant", //String, Number, Boolean…, this, super
          "storage.modifier", //static keyword
          "storage.type.class.js" //class keyword
        ],
        "settings": {
          "fontStyle": "italic"
        }
      },
      {
        "scope": [
          //following will be excluded from italics (VSCode has some defaults for italics)
          "invalid",
          "keyword.operator",
          "constant.numeric.css",
          "keyword.other.unit.px.css",
          "constant.numeric.decimal.js",
          "constant.numeric.json"
        ],
        "settings": {
          "fontStyle": ""
        }
      }
    ]
  },
  "prettier.singleQuote": true,
  "prettier.semi": true,
  "prettier.trailingComma": "es5",
  "prettier.arrowParens": "always",
  "javascript.validate.enable": true, //here is false
  "css.validate": true, // here is false
  "editor.linkedEditing": true,
  "editor.links": true,
  "editor.minimap.renderCharacters": false,
  "editor.wordBasedSuggestions": "allDocuments", //hre are off
  "editor.parameterHints.enabled": true,
  "files.trimTrailingWhitespace": true,
  "terminal.integrated.fontFamily": "Hack Nerd Font Mono",
  "terminal.integrated.lineHeight": 1,
  "explorer.confirmDelete": false,
  "editor.matchBrackets": "always",
  "workbench.editor.highlightModifiedTabs": true,
  "typescript.updateImportsOnFileMove.enabled": "always",
  "git.autofetch": true,
  "[json]": {
    "editor.defaultFormatter": "vscode.json-language-features"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "editor.suggestSelection": "first",
  "[html]": {
    "editor.defaultFormatter": "vscode.html-language-features"
  },
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "javascript.updateImportsOnFileMove.enabled": "always",
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "diffEditor.ignoreTrimWhitespace": false,
  "editor.largeFileOptimizations": false,
  "editor.letterSpacing": 0.3,
  "editor.renderWhitespace": "boundary",
  "extensions.ignoreRecommendations": true,
  "emmet.excludeLanguages": ["markdown"],
  "emmet.showExpandedAbbreviation": "never",
  "security.workspace.trust.untrustedFiles": "open",
  "terminal.integrated.showExitAlert": false,
  "editor.inlineSuggest.enabled": true,
  "editor.cursorBlinking": "solid",
  "editor.cursorStyle": "line-thin",
  "terminal.integrated.cursorStyle": "line",
  "editor.rulers": [80],
  "screencastMode.fontSize": 32,
  "screencastMode.mouseIndicatorSize": 40,
  "screencastMode.verticalOffset": 10,
  "zenMode.centerLayout": false,
  "zenMode.fullScreen": false,
  "zenMode.hideLineNumbers": false,
  "window.autoDetectHighContrast": false,
  "search.defaultViewMode": "tree",
  "editor.guides.bracketPairs": "active",
  //"git.openRepositoryInParentFolders": "never"
  "[css]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "vim.leader": "<space>",
  "editor.lineNumbers": "relative",
  "editor.accessibilitySupport": "off",
  "explorer.confirmDragAndDrop": false,
  "workbench.editor.empty.hint": "hidden",
  "git.ignoreRebaseWarning": true,
  "accessibility.signals.terminalBell": {
    "sound": "on"
  },
  "terminal.integrated.enableVisualBell": true,
  "workbench.editor.customLabels.patterns": {
    "**/{layout,page}.tsx": "${dirname} ${filename}"
  },
  "terminal.integrated.fontSize": 14,
  "extensions.experimental.affinity": {
    "vscodevim.vim": 1
  },
  "workbench.activityBar.orientation": "vertical",
  "cursor.chat.alwaysSearchWeb": true,
  "editor.stickyScroll.enabled": false,
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
