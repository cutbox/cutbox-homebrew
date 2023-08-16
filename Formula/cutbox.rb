class Cutbox < Formula
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"
  version "1.5.8"
  url "https://github.com/cutbox/CutBox/archive/refs/tags/#{version}.tar.gz"
  sha256 "e0e869781a3523094c9249558bcf8e1ecef17e0acdb12ba56528954c259333bd"
  license "GPL3"

  depends_on "cocoapods"

  def install
    system "bin/homebrew_build"
    prefix.install "CutBox/build/CutBox.app"

    # install cli
    system "make -C cutbox_command build"
    prefix.install "cutbox_command/build/Release/cutbox"
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
