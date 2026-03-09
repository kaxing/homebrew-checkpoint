class Check < Formula
  desc "Fast snapshot-based checkpoints for codebases"
  homepage "https://github.com/kaxing/checkpoint"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-arm64.tar.gz"
      sha256 "9be2de6ae2dc5502248b66c745eca530eda32dcede0fbe53d0747ab879427ab4"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-macos-x86_64.tar.gz"
      sha256 "684bef5b7cf44ab97d4ff3c946d068a293d0775ef4634cff839d0dfdc3ad9316"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-arm64.tar.gz"
      sha256 "77775bf80ce602b9d759b147c11d38cb89e61f1a1f858307f635a445e43f6547"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.1/check-linux-x86_64.tar.gz"
      sha256 "d60cff3730a0bc3dea5efe0bb845b33962972217dbf2eea717b6e8af16fe65e7"
    end
  end

  def install
    bin.install "check"
  end
end
