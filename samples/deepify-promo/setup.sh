#!/usr/bin/env bash
# Distributes cover images from _assets/ into each variation folder.
# Run from anywhere — paths are resolved relative to this script.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASSETS_DIR="$SCRIPT_DIR/_assets"

declare -A BOOKS=(
  [book-3a-second-brain]=book-3a.png
  [book-3b-second-brain-201]=book-3b.png
  [book-voice-agent]=voice-agent.png
  [book-local-ai]=local-ai.png
)

VARIATIONS=(01-hero-cover 02-kinetic-type 03-problem-solution)

missing=0
for book in "${!BOOKS[@]}"; do
  cover_file="${BOOKS[$book]}"
  cover_path="$ASSETS_DIR/$cover_file"
  if [[ ! -f "$cover_path" ]]; then
    echo "⚠ missing $cover_path — skipping $book"
    missing=$((missing + 1))
    continue
  fi
  for variant in "${VARIATIONS[@]}"; do
    target_dir="$SCRIPT_DIR/$book/$variant"
    cp "$cover_path" "$target_dir/cover.png"
    echo "✓ $book/$variant/cover.png"
  done
done

if [[ $missing -gt 0 ]]; then
  echo ""
  echo "Some covers were missing from _assets/. Drop them in and re-run this script."
  exit 1
fi

echo ""
echo "Done. Preview any variation with:"
echo "  bun run packages/cli/src/cli.ts preview samples/deepify-promo/book-3a-second-brain/01-hero-cover"
