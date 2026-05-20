class Roost < Formula
  desc "Interactive AI Session manager TUI for Claude, Gemini, Codex, Copilot, OpenCode"
  homepage "https://github.com/phpgao/roost"
  version "0.2.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-arm64.tar.gz"
      sha256 "8eefe06995af1782edaa4ab7f6b7a2ff1a6025bdde30c7aff731f04cf775bb9b"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-amd64.tar.gz"
      sha256 "4319f83dbc2bd3c21c3113301125ea3e06662f92b345381e679c27e6a10f0e67"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-arm64.tar.gz"
      sha256 "53730d0e4d7125dc723878fe4aca39673e7e9911a8c3ab04bd8d4bfac5683cc1"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-amd64.tar.gz"
      sha256 "8d2da7a897def223c18b59adc3c4bbc6e0c0e2254fb1c9cd7f8481bb55c0de4a"
    end
  end

  def install
    bin.install "roost"
  end

  test do
    assert_match "roost", shell_output("#{bin}/roost --help 2>&1", 1)
  end
end
