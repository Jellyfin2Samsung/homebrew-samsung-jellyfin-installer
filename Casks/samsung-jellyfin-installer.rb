cask "samsung-jellyfin-installer" do
  version "2.2.0.3"

  on_intel do
    sha256 "1c25320c7c0975e96a3ef3be75b603f879cc1e94bec0c35218a9f940407a78c0"
    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-x64.dmg"
  end
  on_arm do
    sha256 "f587f520fc25874e381c8bf94043e3088a99a76605b825e0d50ded5bc4c307cd"
    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end

  name "Samsung Jellyfin Installer"
  desc "Jellyfin client for Samsung Tizen TVs"
  homepage "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Jellyfin2Samsung.app"
end
