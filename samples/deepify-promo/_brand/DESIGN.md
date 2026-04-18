# Deepify Academy — Brand Design System

Shared across all book promo videos. Every composition in `samples/deepify-promo/` inherits these rules. Do not invent new colors or fonts for individual variations — vary the STORYTELLING, not the brand.

## Identity

- **Deepify Academy** — publisher / brand
- **Mood:** confident, technical, calm. Books about thinking clearly with AI.
- **Do NOT:** make it feel "startup-y," playful, or gamified. The audience wants substance.

## Colors

| Token          | Hex       | Role                               |
| -------------- | --------- | ---------------------------------- |
| `--canvas-top` | `#2C4764` | Navy gradient top (background)     |
| `--canvas-bot` | `#3A5F87` | Navy gradient bottom (background)  |
| `--deep`       | `#0F2339` | Near-black navy (CTA button text)  |
| `--text`       | `#FFFFFF` | Primary text                       |
| `--accent`     | `#3B9FDE` | Deepify sky blue — single accent   |
| `--muted`      | `#AFBCC7` | Secondary text, metadata, dividers |

**Rule:** one `--accent` element per frame, maximum. The accent is a single note, not a chord.

## Typography

| Token    | Family             | Weight  | Usage                         |
| -------- | ------------------ | ------- | ----------------------------- |
| headline | Inter Tight, Inter | 800     | Big titles, tagline, CTA      |
| subhead  | Inter Tight, Inter | 600-700 | Benefits, section heads       |
| body     | Inter              | 400-500 | Author, description, metadata |
| kicker   | Inter              | 500     | Uppercase, 0.28-0.32em track  |

All text on dark navy: minimum 22px for body, 60px+ for headlines, 4.5:1 contrast (white on navy passes easily).

## Motion

- **Eases:** `power3.out`, `expo.out`, `power2.out`, `power2.inOut`
- **Forbidden:** `back.out`, `elastic`, `bounce` — undermines the precision
- **Durations:** 0.5-0.8s entrances, 0.4-1.0s holds, 0.5s scene crossfades
- **First motion:** offset 0.1-0.3s, never at t=0

## Scene transitions

Cross-fade 0.5s. No shader glitches, no whip pans. The aesthetic is deliberate, not frenetic.

## Per-variation tone overlay

All variations inherit the brand. Storytelling varies:

- **Hero Cover** — straightforward product launch. Cover is the hero.
- **Kinetic Type** — punchy, higher energy. Title is the hero. Tighter timing (0.3-0.5s beats).
- **Problem → Solution** — empathetic lead, answer reveal. Slower first scene, accelerate once cover lands.

## What NOT to do

- No warm earth tones
- No serif type (book is technical, not literary)
- No more than one sky-blue element per frame
- No `back.out` / `elastic` / `bounce` eases
- Don't stretch the cover — maintain portrait aspect
- Don't put text over the middle of the cover image
- No more than 4 lines of text in a single frame
