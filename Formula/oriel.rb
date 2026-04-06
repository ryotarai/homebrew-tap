class Oriel < Formula
  desc "Rich web UI for Claude Code"
  homepage "https://github.com/ryotarai/oriel"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-darwin-amd64"
      sha256 "bb5d1d51bc9aa0852eca629a28d9d4d4993ca4f579723381e6c8109eae0ba06d"
    end
    on_arm do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-darwin-arm64"
      sha256 "3167e798b343af40bb1c459d27b846e9772d3432da5cdc438e8e7c22631d5b21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-linux-amd64"
      sha256 "a79136937ae450523b49da2798c48326278b327212ab879353202fb615bd98c6"
    end
    on_arm do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-linux-arm64"
      sha256 "bfb0836d4df5fee89e7d5c13464747d9cb54dece367209965e0d77269579e493"
    end
  end

  def install
    bin.install stable.url.split("/").last => "oriel"
  end
end
