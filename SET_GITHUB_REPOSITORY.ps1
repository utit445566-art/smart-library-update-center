param(
  [Parameter(Mandatory=$true)][string]$Owner,
  [Parameter(Mandatory=$true)][string]$Repository
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$files = @(
  (Join-Path $root "school\latest.json"),
  (Join-Path $root "distribution\latest.json")
)

foreach ($file in $files) {
  $text = Get-Content -Raw -Encoding UTF8 $file
  $text = $text.Replace("OWNER", $Owner).Replace("REPOSITORY", $Repository)
  Set-Content -Encoding UTF8 -NoNewline -Path $file -Value $text
}

Write-Host ""
Write-Host "Update Center URL:" -ForegroundColor Cyan
Write-Host "School:"
Write-Host "https://raw.githubusercontent.com/$Owner/$Repository/main/school/latest.json"
Write-Host ""
Write-Host "Distribution:"
Write-Host "https://raw.githubusercontent.com/$Owner/$Repository/main/distribution/latest.json"
Write-Host ""
Write-Host "แก้ latest.json เรียบร้อยแล้ว"
