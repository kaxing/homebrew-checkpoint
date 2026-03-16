class Check < Formula
  desc "Fast snapshot-based checkpoints for codebases"
  homepage "https://github.com/kaxing/checkpoint"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.3/check-macos-arm64.tar.gz"
      sha256 "b8d7dfe23c4e7732259a92d06b36eaa866020fc3d4bf64d6598ba327c34d2cb6"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.3/check-macos-x86_64.tar.gz"
      sha256 "8a38aad6c28fcc83b4438c20b5958431b86d103911fb31602f39baba4badb8f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.3/check-linux-arm64.tar.gz"
      sha256 "36b35ea4c151e16db14513646b4f02aad0f492ec2c43cf05e52d7ede0e28f63a"
    else
      url "https://github.com/kaxing/checkpoint/releases/download/v0.0.3/check-linux-x86_64.tar.gz"
      sha256 "fa64094cdc2930b79ed0d21a63f7542158b71d43d1251f0696c7d790e783e3f5"
    end
  end

  def install
    bin.install "check"
  end
end
