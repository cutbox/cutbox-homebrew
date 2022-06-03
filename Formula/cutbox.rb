class Cutbox < Formula
  desc "Clipboard history manager"
  homepage "https://cutbox.github.io"
  version "1.4.18"
  url "https://github.com/cutbox/CutBox/archive/refs/tags/#{version}.tar.gz"
  sha256 "aee093351a660ca687bf0a15afc3ba713aa1b8986767da18d1e8156c9aad37cd"
  license "GPL3"

  depends_on "cocoapods"

  def install
    system "bin/build"
    system "mv CutBox/build/CutBox.app ."
    prefix.install "CutBox.app"
  end

  def caveats
    <<~EOS
      CutBox installed to #{prefix}/CutBox.app

      Copy the app to /Applications

      cp -R #{prefix}/Emacs.app /Applications/

      alternatively symlink the app to /Applications (note: this won't be found Spotlight)

      ln -s #{prefix}/Emacs.app /Applications/

      After copying to /Applications (before running CutBox) open

      System Preferences > Security & Privacy > Privacy

      Add and check on, CutBox to the "Accessibility" and "Input Monitoring" lists, so
      it can trigger a paste action.
    EOS
  end

end
