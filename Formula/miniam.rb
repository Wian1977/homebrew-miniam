class Miniam < Formula
  desc "Apple Music in the terminal with true-color cover art and spectrum"
  homepage "https://github.com/Wian1977/miniam"
  url "https://github.com/Wian1977/miniam/releases/download/v0.1.0/miniam-v0.1.0-linux-x86_64.tar.gz"
  version "0.1.0"
  sha256 "d1f9540ed235852b88e78f9ae5ffc7b5d581806b586c94f3bae089f632917e33"

  depends_on :linux

  def install
    bin.install "miniam"
  end

  def caveats
    <<~EOS
      Linux x86_64 only. Requires pactl/parec (PipeWire or PulseAudio)
      and Firefox or Chrome with Widevine CDM.
      A browser window opens on first launch to sign in to Apple Music once.
    EOS
  end

  test do
    assert_predicate bin/"miniam", :exist?
  end
end
