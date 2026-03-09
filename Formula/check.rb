class Check < Formula
  desc "Fast snapshot-based checkpoints for codebases"
  homepage "https://github.com/kaxing/checkpoint"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-arm64.tar.gz"
      sha256 "d38815145a0cf9c37ca5f4d3ff5d4c280462025cbf9216afd0a3797802b0b8d3"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-x86_64.tar.gz"
      sha256 "80dd6f86d38865374bc61d48da614fa729dcd2ab2ba1b15d7e0f455287adab27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-arm64.tar.gz"
      sha256 "955dece753594e0645da3b5d87ae99058f917a5235b0e9076fc970f145b8860a"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-x86_64.tar.gz"
      sha256 "54cb2738559ddd03f26093017745677ee45f9a78f4894ff1f452526537911770"
    end
  end

  def install
    bin.install "check"
  end
end
