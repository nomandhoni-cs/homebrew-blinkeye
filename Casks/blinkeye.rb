cask "blinkeye" do
  version "2.7.3"
  sha256 "4e19f7bc1105b103985f7106ca7c690838bc0d051820502d75196e9a4782c703"

  url "https://github.com/nomandhoni-cs/blink-eye/releases/download/v#{version}/Blink.Eye_x64.app.tar.gz",
      verified: "github.com/nomandhoni-cs/blink-eye/",
      verified: "github.com/nomandhoni-cs/blink-eye/",
      verified: "github.com/nomandhoni-cs/blink-eye/",
      verified: "github.com/nomandhoni-cs/blink-eye/",
      verified: "github.com/nomandhoni-cs/blink-eye/",
      verified: "github.com/nomandhoni-cs/blink-eye/",
      verified: "github.com/nomandhoni-cs/blink-eye/",
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
