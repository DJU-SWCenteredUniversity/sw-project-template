#!/usr/bin/env bash
# Copy the downloaded template into a new project folder.
set -euo pipefail
if (( $# > 1 )); then
  printf 'Usage: bash scripts/create-project.sh [new-project-path]\n' >&2
  exit 1
fi
template_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)"
project_path="${1:-../my-project}"
if [[ -z "$project_path" || -e "$project_path" || -L "$project_path" ]]; then
  printf 'Target is empty or already exists. Choose a new folder name.\n' >&2
  exit 1
fi
parent="$(dirname -- "$project_path")"
name="$(basename -- "$project_path")"
if [[ ! -d "$parent" || "$name" == '.' || "$name" == '..' ]]; then
  printf 'Choose an existing parent folder and a new project name.\n' >&2
  exit 1
fi
parent="$(cd -- "$parent" && pwd -P)"
target="$parent/$name"
case "$target/" in
  "$template_root/"*) printf 'Choose a project folder outside the template folder.\n' >&2; exit 1 ;;
esac
files=(
  '.env.example'
  '.github/ISSUE_TEMPLATE/task.md'
  '.github/PULL_REQUEST_TEMPLATE.md'
  '.gitignore'
  'CONTRIBUTING.md'
  'FOLDER_TREE.md'
  'LICENSE_NOTICE.md'
  'README.md'
  'TEMPLATE_GUIDE.md'
  'assets/README.md'
  'data/README.md'
  'data/sample/.gitkeep'
  'docs/meeting-minutes-template.md'
  'docs/oss-license-check.md'
  'docs/project-plan.md'
  'docs/weekly-log.md'
  'reports/README.md'
  'reports/final/.gitkeep'
  'reports/interim/.gitkeep'
  'reports/presentation/.gitkeep'
  'scripts/create-project.ps1'
  'scripts/create-project.sh'
  'src/README.md'
  'tests/README.md'
)
for relative in "${files[@]}"; do
  if [[ ! -f "$template_root/$relative" ]]; then
    printf 'Template file is missing: %s. Download the complete template first.\n' "$relative" >&2
    exit 1
  fi
done
mkdir -- "$target"
for relative in "${files[@]}"; do
  mkdir -p -- "$(dirname -- "$target/$relative")"
  cp -- "$template_root/$relative" "$target/$relative"
done
printf 'Project created: %s\nNext: open README.md and docs/project-plan.md.\n' "$target"
