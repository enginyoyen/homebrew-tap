# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mimic < Formula
  desc "Mimic is standalone HTTP-based mock server."
  homepage "https://github.com/enginyoyen/mimic"
  version "0.0.6"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/enginyoyen/mimic/releases/download/0.0.6/mimic_0.0.6_Darwin_x86_64.tar.gz"
    sha256 "d8f793d709c1617060280a7d5ec75a486559c3f28662e0fef29eefef8b5822bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/enginyoyen/mimic/releases/download/0.0.6/mimic_0.0.6_Darwin_arm64.tar.gz"
    sha256 "7f6e54589f19eec54edf863cd5b4e1dac34183a52c0e43c783aced797888ff74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/enginyoyen/mimic/releases/download/0.0.6/mimic_0.0.6_Linux_x86_64.tar.gz"
    sha256 "df39e34730aabea754d4c25a42595a367221e97ad06eee8bbf3cfc2788b53250"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/enginyoyen/mimic/releases/download/0.0.6/mimic_0.0.6_Linux_arm64.tar.gz"
    sha256 "9c18e4d466dfb142ebd721ad543d4d9687b9ee991c37e6ef90f581b48108f2fd"
  end

  def install
    bin.install "program"
  end

  test do
    system "#{bin}/mimic --version"
  end
end
