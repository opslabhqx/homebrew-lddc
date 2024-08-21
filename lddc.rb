class Lddc < Formula
    desc "A simple script that collects and copies shared library dependencies of a specified binary to a given directory. "
    homepage "https://github.com/opslabhqx/lddc"
    version "1.0.0"
  
    if Hardware::CPU.intel?
      url "https://github.com/opslabhqx/homebrew-lddc/releases/download/v1.0.0/lddc-v1.0.0-linux-amd64.tar.gz"
      sha256 "0dba2f23a4ca8d1274066317fffc89029111f6cd3a3a65e72b56e73c57ab2560"
    elsif Hardware::CPU.arm?
      url "https://github.com/opslabhqx/homebrew-lddc/releases/download/v1.0.0/lddc-v1.0.0-linux-arm64.tar.gz"
      sha256 "8dd96f02b5f2522defcf91bc67693c7736894091c9688387acec8b1b8506f069"
    end
  
    license "MIT"
  
    def install
      bin.install "lddc"
    end
end
