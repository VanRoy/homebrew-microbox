class MicroboxCli < Formula

    desc "Microbox command line interface, provides utilities to manage microservices git repositories"
    homepage "https://github.com/VanRoy/microcli"
    version "1.1.0"

    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"

    if OS.mac?
        if Hardware::CPU.arm?
            sha256 "279d42bbf1461aa5f6e698f070039f97ac6acfa9dcdf36c06e8b0d132d6811b5"
        else
            sha256 "9c7720bb45d4d9f517e766a762a8f9b45b4c7a8444a31b982daa7c7a9ac76182"
        end
    elsif OS.linux?
        if Hardware::CPU.arm?
            sha256 "e0d94d823e1dcc222e994a54bce88371211651a5f163852697a1794a17b4861e"
        else
            sha256 "2327dadd508d933eed12cc3062f4ddf18e3a0bdf555349493441234822468217"
        end
    end

    url "https://github.com/VanRoy/microcli/releases/download/v#{version}/mbx_#{os}_#{arch}"

    def install
        os = OS.mac? ? "darwin" : "linux"
        arch = Hardware::CPU.arm? ? "arm64" : "amd64"
        bin.install "mbx_#{os}_#{arch}" => "mbx"
      end
  end
