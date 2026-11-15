class Miniam < Formula
  desc "Apple Music in the terminal with true-color cover art and a live spectrum"
  homepage "https://github.com/Wian1977/miniam"
  url "https://github.com/Wian1977/miniam/releases/download/v0.1.1/miniam-v0.1.1-linux-x86_64.tar.gz"
  version "0.1.1"
  sha256 "a923813c2a9878639c4b03bff861490d5978ec1e9cc121d57721b351553a1204"

  depends_on :linux

  def install
    bin.install "miniam"
  end

  def caveats
    <<~EOS
      Linux x86_64 only. Requires pactl/parec (PipeWire or PulseAudio)
      and an official Firefox or Chrome build.
      A browser window opens on first launch to sign in to Apple Music once.
    EOS
  end

  test do
    assert_predicate bin/"miniam", :exist?
  end
end
