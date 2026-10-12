# bromaniac.github.io

Fredrik Broman's personal website, hosted on [GitHub Pages](https://bromaniac.github.io).
A static site — plain HTML/CSS, no build system, no backend.

## What's here

| Path | Description |
|------|-------------|
| `index.html` | Homepage — developer/filmmaker profile, social links, and a "Snacka Kubernetes" talk playlist |
| `filmografi.html` | Filmography (Swedish) — table of film, TV, and music video work (2004–2006) |
| `mall.css` | Single stylesheet — CSS custom properties, responsive (mobile-first, 768px breakpoint) |
| `create-movie-html.awk` | AWK utility that turns a plain-text movie list into an HTML table |
| `paranoia/` | Browser port of the classic BSD game **Paranoia** (TypeScript) — see [`paranoia/README.md`](paranoia/README.md) |
| `AGENT.md` | Coding agent instructions for this repo |

## The Paranoia game

`paranoia/` is a solo text-adventure port of [py-paranoia](https://github.com/spkane/py-paranoia)
(itself a port of the original BSD *paranoia*). Terminal input is replaced with buttons;
game state persists via localStorage. Play it at
[bromaniac.github.io/paranoia](https://bromaniac.github.io/paranoia/) or open
`paranoia/index.html` locally.

## Development

No build step for the main site — edit HTML/CSS directly and refresh the browser.

The Paranoia game is written in TypeScript (`game.ts`) and compiled to `game.js`
(the compiled output is checked in). To rebuild after editing:

```sh
cd paranoia
npx -p typescript tsc game.ts --target es2020 --strict
```

## Tech

- HTML5, CSS3 (custom properties, flexbox, media queries)
- TypeScript (Paranoia game only — compiled to a single plain JS file, no bundler)
- Font Awesome icons (via CDN)
