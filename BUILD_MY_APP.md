# Build My Clash Party

Double-click `BUILD_MY_APP.bat` to compile the personalized Windows app.

The launcher does **not** update Git, change branches, commit files, or upload anything. It only installs the locked dependencies and builds the files currently present in this folder.

## PowerShell commands used

```powershell
Set-Location 'C:\_exp\clash-party'
pnpm install --frozen-lockfile
pnpm run build:win
```

The completed installer/package should appear under:

```text
C:\_exp\clash-party\dist
```

Requirements: Node.js, pnpm, and the Windows build tools required by the project.
