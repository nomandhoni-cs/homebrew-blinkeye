cask "blinkeye" do
  version "2.3.0"
  sha256 "15893ee25a4f01bac44eda296e6ed16e41964b84a69d88d2581a446b6f66d8aa"

  url "https://github.com/nomandhoni-cs/blink-eye/releases/download/v#{version}/Blink.Eye_x64.app.tar.gz",
      verified: "github.com/nomandhoni-cs/blink-eye/"
  name "Blink Eye"
  desc "Blink Eye - Best Eye Care & Break Timer for Mac, Windows, Linux"
  homepage "https://blinkeye.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Blink Eye.app"

  uninstall quit: "com.blinkeye.app"

  caveats <<~EOS
    IMPORTANT NOTICE:

    Apple requires developers to pay $100/year for app notarization. 
    
    As a small developer, this cost is significant, so this app has not been notarized.

    As a result, macOS Gatekeeper might block the app. You can bypass this restriction using one of the following methods:

    1. Via Finder:
      - Right-click the app in Finder.
      - Select "Open" to allow it to run.

    2. Via Terminal:
      - Run the following command to remove the Gatekeeper quarantine attribute:
        ```
        xattr -d com.apple.quarantine /path/to/Blink\ Eye.app
        ```

    Your understanding and support for independent developers like me are greatly appreciated! 💡
  EOS

end
