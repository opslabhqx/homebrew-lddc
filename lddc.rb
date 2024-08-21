class Lddc < Formula
    desc "A simple script that collects and copies shared library dependencies of a specified binary to a given directory. "
    homepage "https://github.com/opslabhqx/lddc"
    version "1.0.0"
  
    if Hardware::CPU.intel?
      url "https://github.com/opslabhqx/lddc/releases/download/v1.0.0/lddc-v1.0.0-linux-amd64.tar.gz"
      sha256 "c2413e3e8c6246220196569ee5bec4092706536d722597ca8e82978f860272eb"
    elsif Hardware::CPU.arm?
      url "https://github.com/opslabhqx/lddc/releases/download/v1.0.0/lddc-v1.0.0-linux-arm64.tar.gz"
      sha256 "6d425c04b5cc92cf2edaaa5cdd8169776c724249b10014ab453cb1f8af77e50d"
    end
  
    license "MIT"
  
    def install
      bin.install "lddc"
    end
end
