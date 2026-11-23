cask "sidekick" do
  version "1.2.13"
  sha256 "08d1c763c3f26d9c307a1a8482ff271409e4492a611bb9bac8f838dd5126fbc1"

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
