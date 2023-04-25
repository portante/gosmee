# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosmee < Formula
  desc "gosmee - A webhook and https://smee.io forwarder"
  homepage "https://github.com/chmouel/gosmee"
  version "0.17.0"

  on_macos do
    url "https://github.com/chmouel/gosmee/releases/download/0.17.0/gosmee_0.17.0_MacOS_all.tar.gz"
    sha256 "8ba73fe4d00766d7c04a2713067bcc2466feb7c24674df09f5e9cc1aeb502f0d"

    def install
      output = Utils.popen_read("SHELL=bash #{bin}/gosmee completion bash")
      (bash_completion/"gosmee").write output
      output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion zsh")
      (zsh_completion/"_gosmee").write output
      output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion fish")
      (fish_completion/"gosmee.fish").write output
      prefix.install_metafiles
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chmouel/gosmee/releases/download/0.17.0/gosmee_0.17.0_Linux_arm64.tar.gz"
      sha256 "ae0cd0990214aa84fe17f0e2be5009001b3496e3779e2613cf2013079fda2d4c"

      def install
        output = Utils.popen_read("SHELL=bash #{bin}/gosmee completion bash")
        (bash_completion/"gosmee").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion zsh")
        (zsh_completion/"_gosmee").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion fish")
        (fish_completion/"gosmee.fish").write output
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chmouel/gosmee/releases/download/0.17.0/gosmee_0.17.0_Linux_x86_64.tar.gz"
      sha256 "79e735428561753cba68b17ff40f9f453dafe45c45a38c12d1a75bea07bf633c"

      def install
        output = Utils.popen_read("SHELL=bash #{bin}/gosmee completion bash")
        (bash_completion/"gosmee").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion zsh")
        (zsh_completion/"_gosmee").write output
        output = Utils.popen_read("SHELL=zsh #{bin}/gosmee completion fish")
        (fish_completion/"gosmee.fish").write output
        prefix.install_metafiles
      end
    end
  end
end
