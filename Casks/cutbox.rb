cask "cutbox" do
  version "1.4.13"

  sha256 "18cabef007c7d074acef355bd0ce682be706a6040065d31bf5e20bf4b0222a21"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
end
