class Dent < Formula
  desc "Leave a dent: local checkpoints so agents can find their way back"
  homepage "https://github.com/kaxing/dent"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/dent/releases/download/v0.0.5/dent-darwin-arm64.tar.gz"
      sha256 "3b08e0f368b2fe8afd50299ddf918a0e69e8ac3d67ebec7ba2dd46653216115d"
    else
      url "https://github.com/kaxing/dent/releases/download/v0.0.5/dent-darwin-amd64.tar.gz"
      sha256 "7efa742466fd26478dc693dc84046ee038eb25096b43384861387cc79b3120a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kaxing/dent/releases/download/v0.0.5/dent-linux-arm64.tar.gz"
      sha256 "c5ee614a3baf00087728273cee2d4db6e4f59bab39b69b5a3980bea702746dc5"
    else
      url "https://github.com/kaxing/dent/releases/download/v0.0.5/dent-linux-amd64.tar.gz"
      sha256 "3b67ad4d17b9e7c4983a5fc735e347071e21822a0c1bffdb9ebefc72c9b98925"
    end
  end

  def install
    bin.install "dent"
  end

  test do
    assert_equal "v#{version}", shell_output("#{bin}/dent --version").strip
    assert_match "leave a dent", shell_output("#{bin}/dent --help")
  end
end
