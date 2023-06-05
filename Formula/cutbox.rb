class Cutbox < Formula
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"
  version "1.5.6"
  url "https://github.com/cutbox/CutBox/archive/refs/tags/#{version}.tar.gz"
  sha256 "103dd49e9f9adf1f2314329217d95761c0a8c329d89a6ef596abb37888873109"
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
