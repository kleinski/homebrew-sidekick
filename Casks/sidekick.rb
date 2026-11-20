cask "sidekick" do
  version "1.2.11"
  sha256 "e96ae283b9f41e213755e1da6dcf170f0fa824559279f3ed98db28b689b48455"

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
