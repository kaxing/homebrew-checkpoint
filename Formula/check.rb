class Check < Formula
  desc "Fast snapshot-based checkpoints for codebases"
  homepage "https://github.com/kaxing/checkpoint"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-arm64.tar.gz"
      sha256 "21bb84c19926f3779dcb102908e7838501d93977cacd001143b38fd081b3097c"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-x86_64.tar.gz"
      sha256 "5c98c00e4a7730f5e7bc40e2e4562aca53e441ccb12aafad0d15874a2d70827c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-arm64.tar.gz"
      sha256 "a1f3a447a3996321f01b5ec8afd8ffebb537d65a97398f8b45de775b38d38e31"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-x86_64.tar.gz"
      sha256 "e561616953463fc48c9043d7c95b0f54952ae5684f2c03a8b6b5b5bcda7739ae"
    end
  end

  def install
    bin.install "check"
  end
end
