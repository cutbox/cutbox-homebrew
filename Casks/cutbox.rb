cask "cutbox" do
  version "1.4.21"
  sha256 "e5fb49bfcd2b269f898509e9ef9c8026388f34dfff4259114a83ff05525635c1"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"

  def caveats
    <<~EOD
      *** IMPORTANT ***

      Before running CutBox!

      Open System Preferences > Security & Privacy > Privacy

      Add CutBox to both:  "Accessibility" and "Input Monitoring".

      This is so it can trigger a paste action.

      After you've added CutBox to these lists,
      you can start CutBox and enjoy.
    EOD
  end
end
