class Dps < Formula
  desc "Docker Pretty Status — a colorful, interactive replacement for docker ps"
  homepage "https://github.com/Ltomxd/docker-pretty-status"
  url "https://github.com/Ltomxd/docker-pretty-status/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "5a9fa58acd01d7ce732888258ace7a0d1be686a78f15d69acf4fed27365b6025"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "dps.sh" => "dps"
  end

  test do
    assert_match "dps v", shell_output("#{bin}/dps --version")
  end
end
