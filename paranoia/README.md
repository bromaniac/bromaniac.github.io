# Paranoia — Web Version (TypeScript)

A browser port of [py-paranoia](https://github.com/spkane/py-paranoia) (itself a port of the classic
BSD games *paranoia*). The game logic is unchanged; the terminal input is
replaced with buttons — a **Continue** button where the original waits for
`<Enter>`, and one button per option where the original asks for a letter.
Your statistics live in a persistent sidebar panel, and the game can be saved
to and loaded from the browser's localStorage.

## Play

Open `index.html` directly in any modern browser, or serve the folder over
HTTP:

```sh
cd web
python3 -m http.server 8000
# then visit http://localhost:8000
```

## Files

| File         | Purpose                                                        |
| ------------ | -------------------------------------------------------------- |
| `index.html` | The page: game log, character panel, action buttons, About dialog |
| `style.css`  | Styling (dark "Alpha Complex" theme)                           |
| `game.ts`    | TypeScript source of the game — **edit this**                  |
| `game.js`    | Compiled JavaScript loaded by the browser (build output)       |

## Build

The browser loads `game.js`, which is compiled from `game.ts`. You only need
to build after editing `game.ts` — the compiled `game.js` is checked in, so
cloning this folder is enough to play.

The only tool needed is a TypeScript compiler. With Node.js installed, no
installation is required:

```sh
npx -p typescript tsc game.ts --target es2020 --strict
```

or install TypeScript once and run it directly:

```sh
npm install -g typescript
tsc game.ts --target es2020 --strict
```

Either command writes `game.js` next to `game.ts`. There is no bundler, no
npm project, and no runtime dependencies: the output is a single plain
script loaded with `<script src="game.js">`, so it also works when
`index.html` is opened via `file://`.

## About this port

This port was created by **Mistral Large 4**, an AI coding assistant developed
by [Mistral AI](https://mistral.ai), operating inside **Pi**
([pi.dev](https://pi.dev), npm: `@earendil-works/pi-coding-agent`,
GitHub: [earendil-works/pi](https://github.com/earendil-works/pi)) — a
minimal, extensible agent harness for coding agents.

The conversion was done page by page from `paranoia.py`: the `Game` class,
all 57 pages, the dice rolls, the clone/combat rules, and every line of story
text were carried over, with `input()` prompts replaced by promise-based
button clicks. The result was verified against the original Python game:

- the compiled game was played through hundreds of times with random inputs,
  covering all 56 reachable pages with no errors;
- a deterministic playthrough of the Python original and of this port
  produced byte-identical transcripts;
- every story string in `paranoia.py` was checked to appear verbatim in
  `game.ts`.

The original game is public domain and may not be sold for profit (see the
About dialog in the game).
