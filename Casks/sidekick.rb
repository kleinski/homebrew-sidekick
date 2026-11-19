cask "sidekick" do
  version "1.2.7"
  sha256 "e5d47489eae882d3c911679f0758aaee0f1dd2a76ff486b538856f8883c4feb5"

  url "https://github.com/kleinski/SideKick/releases/download/v#{version}/SideKick-#{version}-mac-universal.dmg"
  name "SideKick"
  desc "Turn your Android tablet into a true second display across multiple MacBooks — USB-C or wireless over WiFi with instant Multi-Mac Takeover"
  homepage "https://github.com/kleinski/SideKick"

  app "SideKick.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/SideKick.app"]
  end
end
