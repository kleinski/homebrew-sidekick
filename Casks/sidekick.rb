cask "sidekick" do
  version "1.2.14"
  sha256 "e9151d1e8b7c84a2756d0af254fbc54f516b4c3478bfb8bed63014cec3e9e492"

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
