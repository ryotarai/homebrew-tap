class Oriel < Formula
  desc "Rich web UI for Claude Code"
  homepage "https://github.com/ryotarai/oriel"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-darwin-amd64"
      sha256 "53de8a2bd17dc4a38769fa3b344664c379c1b9266e69d158dea04f2c44b71761"
    end
    on_arm do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-darwin-arm64"
      sha256 "b6473c1cf3a218c7744f30c6bdd91a981cf03ac344b50604da305c100a07539a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-linux-amd64"
      sha256 "662606f6854ee2dbaccf54f2b02a07b697b5919424055d2602df35156ef3a994"
    end
    on_arm do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-linux-arm64"
      sha256 "6b572901298817c0c78f2fa359e6d86af8ba1d6baf962bb6c510e5d621853aff"
    end
  end

  def install
    bin.install stable.url.split("/").last => "oriel"
  end
end
