class Oriel < Formula
  desc "Rich web UI for Claude Code"
  homepage "https://github.com/ryotarai/oriel"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-darwin-amd64"
      sha256 "483d56541a21842e5416676d38abc10913fa73eb9568b6ca78fdfbd05f1571cf"
    end
    on_arm do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-darwin-arm64"
      sha256 "59d8895ee2f9c5749976f26a951a67a7062d069761e9a8f88b450356b07b1ad7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-linux-amd64"
      sha256 "1bed7679901af48a1e1de996f431c67f6c74fb8d48c36d4f9460ce6d0a39755d"
    end
    on_arm do
      url "https://github.com/ryotarai/oriel/releases/download/v#{version}/oriel-linux-arm64"
      sha256 "d5c7b777c71db43b4b703afac65cccf121ba77e7a5ae42d8dbf4191bacfbe60c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "oriel"
  end
end
