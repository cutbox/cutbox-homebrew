class Cutbox < Formula
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"
  version "1.4.21"
  url "https://github.com/cutbox/CutBox/archive/refs/tags/#{version}.tar.gz"
  sha256 "1e9386f90c5017ccfded4e03370ddbaa1f5545ff3f4779686d5ed8d3fdd10a3f"
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

      Open System Preferences > Security & Privacy > Privacy

      Add CutBox to both:  "Accessibility" and "Input Monitoring".

      This is so it can trigger a paste action.

      After you've added CutBox to these lists,
      you can start CutBox and enjoy.
    EOS
  end
end
