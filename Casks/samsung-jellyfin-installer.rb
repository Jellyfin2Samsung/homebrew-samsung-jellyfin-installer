cask "samsung-jellyfin-installer" do
  version "2.2.0.7"

  on_arm do
    sha256 "35c82df237e3dfabcf79d55fef475e1dd164e5f4a229e1ee3dc55a0be5edeee8"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "1969d79cc297920875660ebcfb0566d4c8f283e98019f91cb1af8ba7a5212393"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-x64.dmg"
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
