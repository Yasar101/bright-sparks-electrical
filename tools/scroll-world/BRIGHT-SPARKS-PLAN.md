# Scroll World for Bright Sparks Electrical

## Status

**Source archived for development, not yet integrated or deployed.** The production website in `main` is unchanged.

This directory contains a complete, unmodified text-source snapshot of [oso95/scroll-world](https://github.com/oso95/scroll-world), upstream commit `71cc36d3bb150248ae36a2c552f9cbf88802a79c` (2026-07-29).

Original code and documentation are in this directory; all upstream relative paths and the MIT LICENSE are preserved. This is a vendored snapshot, not a Git fork, and upstream commit history is not embedded.

## Why it's here

The Bright Sparks Electrical website is currently a static HTML/CSS site. Scroll World provides an agent skill, generated-media workflow, and a vanilla JavaScript scroll-scrub engine suitable for evaluating a cinematic section or landing-page experiment.

Existing site paths visible in the website repo include:

- `index.html`
- `commercial-lighting-upgrades.html`
- `loxone-energy-monitoring.html`
- `smart-building-controls.html`
- `electrical-efficiency.html`
- `site-survey.html`

### Concept (not implemented)

A cinematic scroll journey through Bright Sparks' existing services:

1. Introduce Bright Sparks and commercial electrical expertise.
2. Move through an illuminated commercial building to commercial lighting upgrades.
3. Transition into intelligent building controls and Loxone energy monitoring.
4. Show practical electrical energy-efficiency improvements and monitoring.
5. Finish with a prominent link to the existing site survey/contact journey.

Keep service descriptions factual and consistent with existing website content. Design for tablet/mobile as well as desktop.

## Where to start

- `skills/scroll-world/SKILL.md` — primary agent instructions
- `skills/scroll-world/references/prompts.md` — generation prompt templates
- `skills/scroll-world/references/pipeline.md` — media generation workflow
- `skills/scroll-world/references/scrub-engine.js` — portable browser animation logic
- `skills/scroll-world/references/index-template.html` — standalone integration example
- `skills/scroll-world/references/knockout.py` — optional image processing helper
- `README.md` — original project's setup, limitations, and requirements

## Next development steps (requires separate approval)

1. Work only in an isolated branch. Keep `main` unchanged until reviewed and approved.
2. Audit the site layout, fonts, brand assets, accessibility and real service offerings.
3. Prototype one scene using local/demo assets before attempting full generation.
4. Verify the media pipeline prerequisites (`ffmpeg`, `ffprobe`, Python/Pillow if used). The documented generation pipeline requires Higgsfield authentication and may use paid generation credits. **Do not authenticate, spend credits, run downloads, or generate paid media without authorization.**
5. Use `prefers-reduced-motion`, static fallback imagery, lazy-loading, sane mobile video sizing, and an accessible page with working normal links.
6. Test scroll-scrub performance on low-power laptop/mobile devices; do not replace the site navigation or SEO text with video alone.
7. Review and merge deliberately only after the user approves the design and deploy.

## Important distinction

This repository stores the **complete upstream tool/skill source**. It does **not** include ready-made Bright Sparks 3D scenes, videos, or a finished 3D page. Those are generated for each project.

## License and attribution

Scroll World is MIT-licensed. Keep `LICENSE` (copyright (c) 2026 cyw) and the notices in redistributions. Upstream: https://github.com/oso95/scroll-world
