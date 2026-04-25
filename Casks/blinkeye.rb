cask "blinkeye" do
  version "2.7.6"

  on_intel do
    sha256 "0151f3855bef0383df140157b0d55fa81b1bfbcf183a59c04f5278186c1d84b8"
    url "https://github.com/nomandhoni-cs/blink-eye/releases/download/v#{version}/Blink.Eye_x64.app.tar.gz",
        verified: "github.com/nomandhoni-cs/blink-eye/"
  end

  on_arm do
    sha256 "e24df24497210fb400863829edaa7be790346eca3958e594893a553463f55df5"
    url "https://github.com/nomandhoni-cs/blink-eye/releases/download/v#{version}/Blink.Eye_aarch64.app.tar.gz",
        verified: "github.com/nomandhoni-cs/blink-eye/"
  end

  name "Blink Eye"
  desc "Blink Eye - Best Eye Care & Break Timer for Mac, Windows, Linux"
  homepage "https://blinkeye.app/"

  auto_updates true

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
        xattr -d com.apple.quarantine /path/to/Blink\ Eye.app

    Your understanding and support for independent developers like me are greatly appreciated! 💡
  EOS

end
