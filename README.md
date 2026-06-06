# CCO Podcast — Production Notes

Working repo for the **Chief Customer Officer Podcast**, hosted by [Jay Nathan](https://www.linkedin.com/in/jaynathan/) (CEO, Balboa Solutions) and Jeff Breunsbach (Head of Customer Success, Junction).

## What lives here

- **`weekly_research_prompt.md`** — The standing prompt the producer agent runs each week to assemble the brief.
- **`next_episode.md`** — Living document. Story ideas, must-includes, and threads we want to pick up. Jay and Jeff both edit this.
- **`briefs/`** — Weekly research briefs as `YYYY-MM-DD_weekly_brief.md`, one per Monday, anchored to that Tuesday's recording.
- **`transcripts/`** — Episode transcripts (`EP###_Title.txt`). The producer reads these before drafting each brief so callbacks are real, not invented.
- **`archive/`** — Past `next_episode.md` snapshots after each weekly run.

## How the weekly run works

**Runtime:** Run this from **Claude Code on the Mac**, not Cowork. Claude Code has full shell access, the local `gh` auth in keychain, and unrestricted network — all of which the weekly run depends on (`git push`, fetching the Riverside RSS feed, optional local transcription). The Cowork sandbox can't reach those.

To kick off the weekly brief: open Claude Code in this folder on Monday morning and say "run the weekly brief." Claude Code will read `weekly_research_prompt.md` and execute it end to end.

What the prompt does, in order:

1. **Step 0**: Syncs new transcripts from the Riverside RSS feed, reads `next_episode.md`, reviews episode history in `./transcripts/`.
2. **Steps 1–4**: Scans the week's news, filters against show criteria, drafts the brief, fact-checks against primary sources.
3. **Step 5**: Snapshots `next_episode.md` to `./archive/` and clears the **This Week** section for the next cycle.
4. **Step 6**: Writes the brief to `./briefs/YYYY-MM-DD_weekly_brief.md`.
5. **Step 7**: `git add → commit → push` so both hosts have it before Tuesday's record.

## How to contribute story ideas mid-week

Open `next_episode.md` in your editor (or via github.com), append your idea under the appropriate section, commit. The next weekly run picks it up automatically.

---

*Last updated: 2026-06-01*
