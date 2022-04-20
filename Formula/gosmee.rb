# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosmee < Formula
  desc "gosmee  - smee.io go client"
  homepage "https://github.com/chmouel/gosmee"
  version "0.0.7"

  on_macos do
    url "https://github.com/chmouel/gosmee/releases/download/0.0.7/gosmee_0.0.7_MacOS_all.tar.gz"
    sha256 "d36217ff2a87826a115c522c4414d410d7ea8ac3129645f698cd9e514d45641d"

    def install
      bin.install "gosmee" => "gosmee"
      output = Utils.popen_read("SHELL=bash #{bin}/gosmee completion bash")
      (bash_completion/"gosmee").write output
      output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion zsh")
      (zsh_completion/"_gosmee").write output
      prefix.install_metafiles
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chmouel/gosmee/releases/download/0.0.7/gosmee_0.0.7_Linux_x86_64.tar.gz"
      sha256 "066abe93d5d32b560bd89130979dfeace980885655735d370b1c5e8018fb492c"

      def install
        bin.install "gosmee" => "gosmee"
        output = Utils.popen_read("SHELL=bash #{bin}/gosmee completion bash")
        (bash_completion/"gosmee").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion zsh")
        (zsh_completion/"_gosmee").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chmouel/gosmee/releases/download/0.0.7/gosmee_0.0.7_Linux_arm64.tar.gz"
      sha256 "eb7795bb4f7bbc55285b1906a2d9ee51b99da07c5439af812c8af0dc701d57a3"

      def install
        bin.install "gosmee" => "gosmee"
        output = Utils.popen_read("SHELL=bash #{bin}/gosmee completion bash")
        (bash_completion/"gosmee").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion zsh")
        (zsh_completion/"_gosmee").write output
        prefix.install_metafiles
      end
    end
  end
end
