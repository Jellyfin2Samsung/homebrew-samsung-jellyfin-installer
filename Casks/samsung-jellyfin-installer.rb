cask "samsung-jellyfin-installer" do
  version "2.2.0.8"

  on_arm do
    sha256 "3fd59688662ed4488ed236896d2b280bcc1f3941705208d6b62cfddcd606c52b"

    url "https://github.com/Jellyfin2Samsung/Samsung-Jellyfin-Installer/releases/download/v#{version}/Jellyfin2Samsung-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    sha256 "60ad17ce703b22ddf19a49ca6aa50db0cf1d18dc4f22f25b43816ecafe132141"

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
