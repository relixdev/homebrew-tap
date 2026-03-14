class Relixctl < Formula
  desc "Universal command center for AI coding agents"
  homepage "https://relix.sh"
  url "https://github.com/relixdev/relix/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "relixctl", "./relixctl"
    bin.install "relixctl"
  end

  test do
    system "#{bin}/relixctl", "--version"
  end
end
