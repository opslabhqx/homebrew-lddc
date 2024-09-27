class Lddc < Formula
    desc "A simple script that collects and copies shared library dependencies of a specified binary to a given directory."
    homepage "https://github.com/opslabhqx/lddc"
    version "v1.0.0"

    if Hardware::CPU.intel?
      url "https://github.com/opslabhqx/lddc/releases/download/v1.0.0/lddc-v1.0.0-linux-amd64.tar.gz"
      sha256 "a2beca9a42dfe7c00bb3d362635feb07b63e5d8024ef856f3caeaed23f32e1ae"
    elsif Hardware::CPU.arm?
      url "https://github.com/opslabhqx/lddc/releases/download/v1.0.0/lddc-v1.0.0-linux-arm64.tar.gz"
      sha256 "dcc33907c270d195d4e1574e191e32aceca695d28d0249e70bf08bc5f58124e3"
    end

    license "MIT"

    def install
      bin.install "lddc"
    end
end
