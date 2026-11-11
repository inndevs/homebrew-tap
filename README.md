# inndevs Homebrew Tap

Homebrew casks for apps by [inndevs](https://inndevs.com/).

## Mac Taskbar

    brew install --cask inndevs/tap/mac-taskbar

Use the fully qualified name: Homebrew then taps this repository and trusts the cask in one step.

Mac Taskbar updates itself with its built-in updater, so `brew upgrade` skips it unless you ask:

    brew upgrade --cask --greedy inndevs/tap/mac-taskbar

Uninstall (quits Mac Taskbar first so it can restore the Dock):

    brew uninstall --cask inndevs/tap/mac-taskbar

`brew uninstall --zap --cask inndevs/tap/mac-taskbar` also deletes settings (including the saved license key), caches and logs.

## Maintenance

`Casks/mac-taskbar.rb` is updated by `scripts/publish.sh` in the Mac Taskbar repository during an authorized release and pushed only after the new installer is live on mac-taskbar.com. Validate changes with:

    brew style inndevs/tap
    brew audit --cask --online --strict inndevs/tap/mac-taskbar
    brew livecheck --cask inndevs/tap/mac-taskbar
