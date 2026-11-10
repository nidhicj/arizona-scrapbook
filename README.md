# 🌵 Trip Scrapbook

A phone-first trip planner that feels like a scrapbook. One HTML file, no app store, no account, no server. Your trip is saved in your own private GitHub repo and syncs across every phone and laptop.

**[▶ Try the live demo](https://nidhicj.github.io/arizona-scrapbook/)** (opens a sample Arizona trip; edits stay in your browser)

<p>
  <img src="docs/1-home.png" width="240" alt="Itinerary overview">
  <img src="docs/2-day.png" width="240" alt="A day's timeline with MUST WATCH stops">
  <img src="docs/3-packing.png" width="240" alt="Per-person packing lists">
</p>

## What it does

- **Opens on today.** On a trip day it scrolls straight to that day and expands the stop that's up next.
- **Day-by-day timeline.** Flights, drives, hikes, meals and photo spots, each with times, map links, notes and photos.
- **Fold everything.** Collapse whole days or single stops so a 5-day trip fits on one screen.
- **⭐ MUST WATCH vs OPTIONAL.** Tag stops so you know what to skip when you're running late.
- **Packing lists per person.** Separate lists for each traveller plus a shared one, with editable categories.
- **Dream board & reel ideas.** Pin places you want to see and shots you want to film.
- **Works offline.** The page is cached on your phone, so it still opens with no signal.
- **Syncs across devices.** Every save is a commit to your private repo, so your history is never lost.

## Use it for your own trip

1. Fork this repo and turn on **GitHub Pages** (Settings → Pages → deploy from `main`).
2. Create a **private** repo for your data, e.g. `your-name/my-trip-data`.
3. In `index.html`, change `const REPO = '…'` to your data repo.
4. Create a [fine-grained token](https://github.com/settings/personal-access-tokens/new) with access to **only** that data repo and **Contents: Read and write**.
5. Open your Pages URL on each phone, tap the "connect" pill and paste the token once per device.

## How it's built

- A single `index.html` (vanilla JS + CSS, no build step, no framework).
- Data lives in a private repo, read and written through the GitHub Contents API.
- `sw.js` is a tiny network-first service worker for offline use.
- Browser storage (IndexedDB) keeps a local copy so nothing is lost when you're offline.

Built as a side project for a real road trip through Sedona, the Grand Canyon and Page, AZ, with a lot of help from an AI pair programmer.
