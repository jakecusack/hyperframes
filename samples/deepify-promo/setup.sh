#!/usr/bin/env bash
# Distributes cover images AND the Deepify logo from _assets/ into each variation folder.
# Compatible with macOS default bash 3.2 (no associative arrays).

set -eu

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source assets can live outside the repo (e.g. Google Drive) so both machines
# share one canonical copy. Set HYPERFRAMES_ASSETS_DIR to override, otherwise
# fall back to the repo-local _assets/ folder.
if [ -n "${HYPERFRAMES_ASSETS_DIR:-}" ]; then
  ASSETS_DIR="$HYPERFRAMES_ASSETS_DIR"
  echo "using shared assets: $ASSETS_DIR"
else
  ASSETS_DIR="$SCRIPT_DIR/_assets"
fi

if [ ! -d "$ASSETS_DIR" ]; then
  echo "error: assets dir not found: $ASSETS_DIR" >&2
  exit 1
fi

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

LOGO_SRC="$ASSETS_DIR/logo.png"
logo_available=1
if [ ! -f "$LOGO_SRC" ]; then
  echo "ℹ no logo.png in _assets/ — CTA scenes will render with a broken image."
  echo "  Drop your Deepify logo at $LOGO_SRC (e.g. copy from deepify-academy-400.png)."
  logo_available=0
fi

missing_covers=0
for i in "${!BOOK_SLUGS[@]}"; do
  slug="${BOOK_SLUGS[$i]}"
  cover_file="${BOOK_COVERS[$i]}"
  cover_path="$ASSETS_DIR/$cover_file"
  if [ ! -f "$cover_path" ]; then
    echo "⚠ missing $cover_path — skipping $slug"
    missing_covers=$((missing_covers + 1))
    continue
  fi
  for variant in "${VARIATIONS[@]}"; do
    target_dir="$SCRIPT_DIR/$slug/$variant"
    cp "$cover_path" "$target_dir/cover.png"
    if [ "$logo_available" = "1" ]; then
      cp "$LOGO_SRC" "$target_dir/logo.png"
    fi
  done
  echo "✓ $slug (3 variations)"
done

echo ""
if [ "$missing_covers" -gt 0 ]; then
  echo "Some covers were missing from _assets/. Drop them in and re-run this script."
  exit 1
fi

echo "Done. Preview any variation with:"
echo "  bun run packages/cli/src/cli.ts preview samples/deepify-promo/book-3a-second-brain/01-hero-cover"
