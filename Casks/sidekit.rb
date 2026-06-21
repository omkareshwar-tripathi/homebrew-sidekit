cask "sidekit" do
  version "0.1.0"
  sha256 "9400f45186537a0003fff3d7107be35996b6ae2be0955debd0336a1390f03590"

  url "https://github.com/omkareshwar-tripathi/sidekit-releases/releases/download/v#{version}/Sidekit.dmg",
      verified: "github.com/omkareshwar-tripathi/sidekit-releases/"
  name "Sidekit"
  desc "Always-on-top, on-device dictation, shelf, and mirror surface"
  homepage "https://sidekit.app/"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Sidekit.app"

  # Sidekit is not notarized by Apple yet, so macOS quarantines the download and
  # blocks the first launch. Installing via this tap is an explicit trust step
  # (Homebrew requires `brew trust` for third-party casks), so we clear the
  # quarantine flag here — the app then opens with no Gatekeeper warning.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Sidekit.app"]
  end

  caveats <<~EOS
    Sidekit is not notarized by Apple yet. This cask clears the macOS quarantine
    flag on install, so it should open with no warning. If macOS still blocks it,
    open it once via System Settings -> Privacy & Security -> "Open Anyway".
  EOS
end
