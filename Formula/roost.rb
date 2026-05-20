class Roost < Formula
  desc "Interactive AI Session manager TUI for Claude, Gemini, Codex, Copilot, OpenCode"
  homepage "https://github.com/phpgao/roost"
  version "0.2.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-arm64.tar.gz"
      sha256 "82b19f75d76b3c9544aa083e3df97311a72bfabe9a14aa0f6ab009958ec6faf5"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-amd64.tar.gz"
      sha256 "6c484ef077ab0646a6dae394507095be44336f67c7f7441961490b6e8a9d73d4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-arm64.tar.gz"
      sha256 "4240a47cef5cc47a01e7b09b89a7692140243f2b8169980d25b3e6fa649f4891"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-amd64.tar.gz"
      sha256 "f51de301a9f196b225c971ba7659040e2420d23f3f40e5316ffdff1a3c1e858d"
    end
  end

  def install
    bin.install "roost"
  end

  test do
    assert_match "roost", shell_output("#{bin}/roost --help 2>&1", 1)
  end
end
