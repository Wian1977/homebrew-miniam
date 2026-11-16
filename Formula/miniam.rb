class Miniam < Formula
  desc "Apple Music in the terminal with true-color cover art and a live spectrum"
  homepage "https://github.com/Wian1977/miniam"
  url "https://github.com/Wian1977/miniam/releases/download/v0.1.2/miniam-v0.1.2-linux-x86_64.tar.gz"
  version "0.1.2"
  sha256 "04f9c388436148b1aa074a760e987e85464343e21d1d449ee9b7f9670d9fb8b3"

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
