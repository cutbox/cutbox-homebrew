cask "cutbox" do
  version "1.4.15"

  sha256 "761a68fb89dfafb1ce3aced8392720eb57c43ecc3c741e5ede150c5a8f720bb7"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
end
