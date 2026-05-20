class Roost < Formula
  desc "Interactive AI Session manager TUI for Claude, Gemini, Codex, Copilot, OpenCode"
  homepage "https://github.com/phpgao/roost"
  version "0.2.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-arm64.tar.gz"
      sha256 "345a91faca7217bde20512880b44e66c3718a07e9c52e9b2abea58f3e1bc06bc"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-amd64.tar.gz"
      sha256 "d2f817896c735ab04b9638c1febf7afb6e7cade07a699ad9f0e59457d038118f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-arm64.tar.gz"
      sha256 "ee7f3b12844f3763a6e939f9f72fee0a29edec5e5187e0ab5169dbee56bdba59"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-amd64.tar.gz"
      sha256 "aec4541ad7c425fc91401b0205e39d6d7f1d964a7a48fd689d94ae9e31447b5d"
    end
  end

  def install
    bin.install "roost"
  end

  test do
    assert_match "roost", shell_output("#{bin}/roost --help 2>&1", 1)
  end
end
