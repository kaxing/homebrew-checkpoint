class Check < Formula
  desc "Fast snapshot-based checkpoints for codebases"
  homepage "https://github.com/kaxing/checkpoint"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.2/check-macos-arm64.tar.gz"
      sha256 "8c8c91632505e9ba141959647ae064dea8284b8f957d5cbbcd5eea91aeb9aa6e"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.2/check-macos-x86_64.tar.gz"
      sha256 "d8fed9001bf4412920c3213beebaf20737713233b603fa9d83325d71861203ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.2/check-linux-arm64.tar.gz"
      sha256 "13b1ede398fe8ca8be1bce924ef9fa7f05cb19bff1246297bf9a58026bb06f5f"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.2/check-linux-x86_64.tar.gz"
      sha256 "60114d9ba5ab01d22cb364e20c32b87810035137a77ef2c07a75dea35e378330"
    end
  end

  def install
    bin.install "check"
  end
end
