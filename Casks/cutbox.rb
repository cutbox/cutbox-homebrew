cask "cutbox" do
  version "1.4.12"

  sha256 "68ba878d6fa140d38d25fc97468129d0492b56f2b602b970e8daa992917b236e"
  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
end
