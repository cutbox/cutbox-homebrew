cask "cutbox" do
  version "1.4.18"
  sha256 "9d4c88f7c584946b10d5aa469836a3b0f21e426128f52cf6d5dcece9a67e15ac"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
end
