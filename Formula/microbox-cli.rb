class MicroboxCli < Formula

    desc "Microbox command line interface, provides utilities to manage microservices git repositories"
    homepage "https://github.com/VanRoy/microcli"
    version "1.0.0"

    if OS.mac?
        url "https://github.com/VanRoy/microcli/releases/download/v1.0.0/mbx_darwin_amd64"
        sha256 "3f48941a47b2499b47093c6d3cc10226214e82c85d7d02ab4a115a8d9406c9e4"
    elsif OS.linux?
        url "https://github.com/VanRoy/microcli/releases/download/v1.0.0/mbx_linux_amd64"
        sha256 "da74cfe9bcaa44acafe85ce35594f3c888607aa6a678838d3b57a1ac900f7777"
    end

    def install
        os = OS.mac? ? "darwin" : "linux"
        bin.install "mbx_#{os}_amd64" => "mbx"
      end
  end
