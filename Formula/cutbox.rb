class Cutbox < Formula
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"
  version "1.5.3"
  url "https://github.com/cutbox/CutBox/archive/refs/tags/#{version}.tar.gz"
  sha256 "92f1abf49e0dd6ac5097c75b87787c82254d396c21d402ec73d1a0f8c0a2cfc9"
  license "GPL3"

  depends_on "cocoapods"

  def install
    system "bin/build"
    prefix.install "CutBox/build/CutBox.app"
  end

  def caveats
    <<~EOS
      CutBox installed to #{prefix}/CutBox.app

      Copy the app to /Applications

      cp -R #{prefix}/CutBox.app /Applications/

      alternatively symlink the app to /Applications
      (note: this won't be found Spotlight)

      ln -s #{prefix}/CutBox.app /Applications/

      *** IMPORTANT ***

      After copying to /Applications (before running CutBox)

      $ open -b com.apple.systempreferences /System/Library/PreferencePanes/Security.prefPane

      i.e. System Preferences > Security & Privacy > Privacy

      Add CutBox to both:  "Accessibility" and "Input Monitoring".

      This is so it can trigger a paste action.

      After you've added CutBox to these lists,
      you can start CutBox and enjoy.
    EOS
  end
end
