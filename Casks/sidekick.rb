cask "sidekick" do
  version "1.2.10"
  sha256 "d45f5b2b34e1a9a0b05b377fc4aa6ef597bd1dd849cca696651efe2da0f38759"

  url "https://github.com/kleinski/SideKick/releases/download/v#{version}/SideKick-#{version}-mac-universal.dmg"
  name "SideKick"
  desc "Turn your Android tablet into a true second display across multiple MacBooks — USB-C or wireless over WiFi with instant Multi-Mac Takeover"
  homepage "https://github.com/kleinski/SideKick"

  app "SideKick.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-cr", "{{appdir}}/SideKick.app"]
  end
end
