# typed: false
# frozen_string_literal: true

class Spe2ed < Formula
  desc "Fast E2E testing with natural language, powered by Claude and chromedp"
  homepage "https://github.com/pengelbrecht/spe2ed"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_darwin_arm64.tar.gz"
      sha256 "0edff4e25a458900b7f8943f4fdca0e03b609bb1c253ff2c8c5595b8fa3b4177"

      def install
        bin.install "spe2ed"
      end
    else
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_darwin_amd64.tar.gz"
      sha256 "a5881e26b47d3a909e37113cd1b7bb7f6362ea386458c1a22c9de01ece3df38f"

      def install
        bin.install "spe2ed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_linux_arm64.tar.gz"
      sha256 "27016e55b6a7ebf8bad5a074eba6dc4e3427d35573d699c752e0ed96e953a01f"

      def install
        bin.install "spe2ed"
      end
    else
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_linux_amd64.tar.gz"
      sha256 "1ce50638807beda185948fc658216f58f741731dcfa40164df9606ff7124b2b8"

      def install
        bin.install "spe2ed"
      end
    end
  end

  test do
    assert_match "spe2ed", shell_output("#{bin}/spe2ed --version")
  end
end
