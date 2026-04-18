#!/usr/bin/env bash
# Distributes cover images from _assets/ into each variation folder.
# Compatible with macOS default bash 3.2 (no associative arrays).

set -eu

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ASSETS_DIR="$SCRIPT_DIR/_assets"

# Parallel arrays: BOOK_SLUGS[i] pairs with BOOK_COVERS[i]
BOOK_SLUGS=(
  "book-3a-second-brain"
  "book-3b-second-brain-201"
  "book-voice-agent"
  "book-local-ai"
)
BOOK_COVERS=(
  "book-3a.png"
  "book-3b.png"
  "voice-agent.png"
  "local-ai.png"
)

VARIATIONS=("01-hero-cover" "02-kinetic-type" "03-problem-solution")

missing=0
for i in "${!BOOK_SLUGS[@]}"; do
  slug="${BOOK_SLUGS[$i]}"
  cover_file="${BOOK_COVERS[$i]}"
  cover_path="$ASSETS_DIR/$cover_file"
  if [ ! -f "$cover_path" ]; then
    echo "⚠ missing $cover_path — skipping $slug"
    missing=$((missing + 1))
    continue
  fi
  for variant in "${VARIATIONS[@]}"; do
    target_dir="$SCRIPT_DIR/$slug/$variant"
    cp "$cover_path" "$target_dir/cover.png"
    echo "✓ $slug/$variant/cover.png"
  done
done

if [ "$missing" -gt 0 ]; then
  echo ""
  echo "Some covers were missing from _assets/. Drop them in and re-run this script."
  exit 1
fi

echo ""
echo "Done. Preview any variation with:"
echo "  bun run packages/cli/src/cli.ts preview samples/deepify-promo/book-3a-second-brain/01-hero-cover"
