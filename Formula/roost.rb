class Roost < Formula
  desc "Interactive AI Session manager TUI for Claude, Gemini, Codex, Copilot, OpenCode"
  homepage "https://github.com/phpgao/roost"
  version "0.2.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-arm64.tar.gz"
      sha256 "b220e721526c1454561d03391d1e9879211c050040e75c644ca79036589be932"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-amd64.tar.gz"
      sha256 "b1ff0b1c4a4decb93ca1f874fb17a76c43aa1e3dc10abc9adae40dd0cdd9959a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-arm64.tar.gz"
      sha256 "f7ece5efab594629e1da5d5eca10c4342a93b62b4ef28d20ba141e03d73fc870"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-amd64.tar.gz"
      sha256 "b67bb8c4519bcd845a5f84f3267434405f22c82af29514ba6c3d9c6d05d3a1eb"
    end
  end

  def install
    bin.install "roost"
  end

  test do
    assert_match "roost", shell_output("#{bin}/roost --help 2>&1", 1)
  end
end
