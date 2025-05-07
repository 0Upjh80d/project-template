Write-Host "🚀 Pulling data..."

# Define arrays for file paths and their corresponding remotes
$filePaths = @()
$remotes = @()

if (-not $filePaths) { Write-Warning "⚠️ Warning: No file paths specified. Please check if this is intended." }
if (-not $remotes)   { Write-Warning "⚠️ Warning: No remotes configured. Please check if this is intended." }

# Loop through each file and remote using their indices
for ($i = 0; $i -lt $filePaths.Length; $i++) {
    $filePath = $filePaths[$i]
    $remote = $remotes[$i]
    Write-Host "Pulling $filePath from remote $remote..."
    & dvc pull $filePath --remote $remote
}

Write-Host "✅ All files pulled successfully."
