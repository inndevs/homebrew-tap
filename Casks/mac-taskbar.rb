cask "mac-taskbar" do
  version "3.0"
  sha256 "09a32c9f90f432aced9c0d4c82183dd5ee1544c6f7085a6cb783e241652f983b"

  url "https://mac-taskbar.com/version/Mac_Taskbar_#{version}.dmg"
  name "Mac Taskbar"
  desc "Taskbar for switching, minimizing and closing windows across displays"
  homepage "https://mac-taskbar.com/"

  livecheck do
    url "https://mac-taskbar.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mac Taskbar.app"

  uninstall quit: "com.inndevs.mac-taskbar"

  zap trash: [
    "~/Library/Caches/com.inndevs.mac-taskbar",
    "~/Library/HTTPStorages/com.inndevs.mac-taskbar",
    "~/Library/HTTPStorages/com.inndevs.mac-taskbar.binarycookies",
    "~/Library/Logs/Mac Taskbar",
    "~/Library/Preferences/com.inndevs.mac-taskbar.plist",
    "~/Library/WebKit/com.inndevs.mac-taskbar",
  ]
end
