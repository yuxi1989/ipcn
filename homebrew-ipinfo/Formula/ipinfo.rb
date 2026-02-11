class Ipinfo < Formula
  desc "IP/Domain geolocation & ASN lookup CLI"
  homepage "https://github.com/yuxi1989/ipinfo"
  url "https://github.com/yuxi1989/ipinfo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ipinfo"
  end

  test do
    assert_match "IP:", shell_output("#{bin}/ipinfo 8.8.8.8")
  end
end
