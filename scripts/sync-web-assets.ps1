$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$target = Join-Path $root 'app-web'
$iconsTarget = Join-Path $target 'icons'

if (Test-Path $target) {
  Remove-Item $target -Recurse -Force
}

New-Item -ItemType Directory -Path $target | Out-Null
New-Item -ItemType Directory -Path $iconsTarget | Out-Null

Copy-Item (Join-Path $root 'index.html') $target
Copy-Item (Join-Path $root 'manifest.webmanifest') $target
Copy-Item (Join-Path $root 'sw.js') $target
Copy-Item (Join-Path $root 'jszip.min.js') $target
Copy-Item (Join-Path $root 'icons\*') $iconsTarget -Recurse -Force
