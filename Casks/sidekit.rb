cask "sidekit" do
  version "0.1.0"
  sha256 "9400f45186537a0003fff3d7107be35996b6ae2be0955debd0336a1390f03590"

  url "https://github.com/omkareshwar-tripathi/sidekit-releases/releases/download/v#{version}/Sidekit.dmg"
  name "Sidekit"
  desc "Always-on-top, on-device dictation, shelf, and mirror surface"
  homepage "https://sidekit.app/"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Sidekit.app"

  caveats <<~EOS
    Sidekit is not notarized by Apple yet, so macOS quarantines downloads.

    If you did NOT install with --no-quarantine, the first launch will be
    blocked. To allow it, either reinstall with:

      brew install --cask omkareshwar-tripathi/sidekit/sidekit --no-quarantine

    or open it once via System Settings -> Privacy & Security -> "Open Anyway".
  EOS
end
