class Lddc < Formula
    desc "A simple script that collects and copies shared library dependencies of a specified binary to a given directory."
    homepage "https://github.com/opslabhqx/lddc"
    version "v1.1.0"

    if Hardware::CPU.intel?
      url "https://github.com/opslabhqx/lddc/releases/download/v1.1.0/lddc-v1.1.0-linux-amd64.tar.gz"
      sha256 "6eabee3c0cfb0935089826a09850a00a08d6e7826d9e4c67a9710e351b45d558"
    elsif Hardware::CPU.arm?
      url "https://github.com/opslabhqx/lddc/releases/download/v1.1.0/lddc-v1.1.0-linux-arm64.tar.gz"
      sha256 "eb1c63a07c77331a0ad9cbbafcfee191cae81d7b5acdc24ad556831fb6f65ff2"
    end

    license "MIT"

    def install
      bin.install "lddc"
    end
end
