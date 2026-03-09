class Check < Formula
  desc "Fast snapshot-based checkpoints for codebases"
  homepage "https://github.com/kaxing/checkpoint"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-arm64.tar.gz"
      sha256 "ec0345d3aebe056bf6d64c1b1eaceb3d259e4c4fcfd7de0704f0434653e46afc"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-x86_64.tar.gz"
      sha256 "999252155d95b22b2c5ffae50cff59dc0cc4e2b502dd42d8f9967286b0464f6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-arm64.tar.gz"
      sha256 "df3b5252f47c6c1fcab085e8bc7559afdc5bd2084eded3bad37839d7fa8e850f"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-x86_64.tar.gz"
      sha256 "581717e3edc669d460e12eb0d6a214decdc943b9445dc8bfd10a7a3d72b3125b"
    end
  end

  def install
    bin.install "check"
  end
end
