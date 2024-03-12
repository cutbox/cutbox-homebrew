cask "cutbox" do
  version "1.6.0"
  sha256 "955a192cf25fc3bdd51a04e27f7ab8ef09e5aedf429bc7a3519859bda2aa77e9"

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox-#{version}.dmg"

  name "cutbox"
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"

  app "CutBox.app"
  binary "cutbox"

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
