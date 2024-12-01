cask "blinkeye" do
  version "2.3.0"
  sha256 "15893ee25a4f01bac44eda296e6ed16e41964b84a69d88d2581a446b6f66d8aa"

  url "https://github.com/nomandhoni-cs/blink-eye/releases/download/v#{version}/Blink.Eye_x64.app.tar.gz",
      verified: "github.com/nomandhoni-cs/blink-eye/"
  name "Blink Eye"
  desc "Break time reminder app"
  homepage "https://blinkeye.vercel.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Blink Eye.app"

  uninstall quit: "com.blinkeye.app"

  caveats <<~EOS
    The app is not notarized. You may need to bypass macOS Gatekeeper:
    - Right-click the app in Finder and select "Open" to allow it to run.
    - Alternatively, use `xattr -d com.apple.quarantine /path/to/Blink\ Eye.app` in the Terminal.
  EOS
end
