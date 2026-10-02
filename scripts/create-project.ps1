# Copy the downloaded template into a new project folder.
[CmdletBinding()]
param([string]$ProjectPath = '../my-project')
$ErrorActionPreference = 'Stop'
$templateRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '..')).TrimEnd([char[]]'\/')
$target = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($ProjectPath).TrimEnd([char[]]'\/')
$prefix = $templateRoot + [IO.Path]::DirectorySeparatorChar
if ($target.Equals($templateRoot, [StringComparison]::OrdinalIgnoreCase) -or
    $target.StartsWith($prefix, [StringComparison]::OrdinalIgnoreCase)) {
    throw 'Choose a project folder outside the template folder.'
}
if (Test-Path -LiteralPath $target) {
    throw "Target already exists: $target. Choose a new folder name."
}
$files = @(
    '.env.example',
    '.github/ISSUE_TEMPLATE/task.md',
    '.github/PULL_REQUEST_TEMPLATE.md',
    '.gitignore',
    'CONTRIBUTING.md',
    'FOLDER_TREE.md',
    'LICENSE_NOTICE.md',
    'README.md',
    'TEMPLATE_GUIDE.md',
    'assets/README.md',
    'data/README.md',
    'data/sample/.gitkeep',
    'docs/meeting-minutes-template.md',
    'docs/oss-license-check.md',
    'docs/project-plan.md',
    'docs/weekly-log.md',
    'reports/README.md',
    'reports/final/.gitkeep',
    'reports/interim/.gitkeep',
    'reports/presentation/.gitkeep',
    'scripts/create-project.ps1',
    'scripts/create-project.sh',
    'src/README.md',
    'tests/README.md'
)
foreach ($relative in $files) {
    $source = Join-Path $templateRoot $relative
    if (!(Test-Path -LiteralPath $source -PathType Leaf)) {
        throw "Template file is missing: $relative. Download the complete template first."
    }
}
[IO.Directory]::CreateDirectory($target) | Out-Null
foreach ($relative in $files) {
    $destination = Join-Path $target $relative
    [IO.Directory]::CreateDirectory([IO.Path]::GetDirectoryName($destination)) | Out-Null
    [IO.File]::Copy((Join-Path $templateRoot $relative), $destination, $false)
}
Write-Host "Project created: $target"
Write-Host 'Next: open README.md and docs/project-plan.md.'
