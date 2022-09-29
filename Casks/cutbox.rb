cask "cutbox" do
  version "1.5.2"
  sha256 "c8b6a4a7e2c29675d36ac267c6da48f86cc48d99e43eae50ae87842be628fb23"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox-#{version}.dmg"
  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"

  def caveats
    <<~EOD
      *** IMPORTANT ***

      Before running CutBox!

      $ open "x-apple.systempreferences:com.apple.preference.security?Privacy"

      i.e. System Preferences > Security & Privacy > Privacy

      Add CutBox to both:  "Accessibility" and "Input Monitoring".

      This is so it can trigger a paste action.

      After you've added CutBox to these lists,
      you can start CutBox and enjoy.

      *** First Run ***

      You'll need to tell MacOS to allow CutBox to run, start the
      app and press OK at the prompt. Then go to...

      $ open "x-apple.systempreferences:com.apple.preference.security?General"

      i.e. System Preferences > Security & Privacy > General

      Click "Allow", then "Open" to allow CutBox to run.

      *** Allowing Software ***

      If you'd prefer to install any software you want to, without Apple's
      messages popping up at all, you can run:

      $ sudo spctl --master-disable

      Check System preferences, Security, you'll see that software can be
      Installed from anywhere. Note that all new software will still need
      YOUR permission to run.
    EOD
  end
end
