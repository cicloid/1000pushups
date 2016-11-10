class Bench < Formula
  desc "Command-line benchmark tool"
  homepage "https://github.com/Gabriel439/bench"
  url "https://github.com/Gabriel439/bench/releases/download/1.0.1/bench-1.0.1-x64-osx-10.11.zip"
  version "1.0.1"
  sha256 "5163325d6f2ebaf54ce0a93208383614f716aba80fc47834ce5f1df3a8adcccf"
  head "https://github.com/Gabriel439/bench.git"


  def install
    bin.install "bench"
  end

  # devel do
  #   depends_on "haskell-stack"
  #
  #   system "stack", "setup"
  #   system "stack", "--local-bin-path=#{bin}", "install"
  # end

  test do
    system bin/"bench"
  end
end
