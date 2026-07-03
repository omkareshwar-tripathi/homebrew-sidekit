# STATUS — homebrew-sidekit                                   updated 2026-07-03

## What this is
Homebrew tap distributing the Sidekit macOS app (always-on-top dictation/shelf/mirror surface) as a cask. One cask: `Casks/sidekit.rb`, currently v0.1.0.

## Now
- _tracks Sidekit releases — bump version + sha256 in Casks/sidekit.rb when a new release ships_

## Next
- Bump cask when the next Sidekit release lands
- Drop the quarantine-clearing postflight once Sidekit is notarized

## Recently done
- 2026-06-22  Update README to verified Homebrew 6.0 trust flow
- 2026-06-22  Strip quarantine in postflight; fix caveats for Homebrew 6.0 (no --no-quarantine)
- 2026-06-22  Add verified parameter to url stanza

## How we work here
Claude reads this file at session start and keeps it updated at session end.
Project rules live in CLAUDE.md (if present). Bump the date above on every edit.
Recently done keeps only the 3 newest entries — drop older lines when adding;
git history of this file is the archive.
