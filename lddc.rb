class Lddc < Formula
    desc "A simple script that collects and copies shared library dependencies of a specified binary to a given directory."
    homepage "https://github.com/opslabhqx/lddc"
    version "#v"

    if Hardware::CPU.intel?
      url "https://github.com/opslabhqx/lddc/releases/download//lddc--linux-amd64.tar.gz"
      sha256 ""
    elsif Hardware::CPU.arm?
      url "https://github.com/opslabhqx/lddc/releases/download//lddc--linux-arm64.tar.gz"
      sha256 ""
    end

    license "MIT"

    def install
      bin.install "lddc"
    end
end
