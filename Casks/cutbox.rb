cask "cutbox" do
  version "1.4.19"
  sha256 "e5dbe732ab0daddec883a4142de8dea648197201e8e512eaaa8955745ba6d44"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
end
