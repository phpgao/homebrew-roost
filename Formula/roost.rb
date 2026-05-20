class Roost < Formula>
  desc "Interactive AI Session manager TUI for Claude, Gemini, Codex, Copilot, OpenCode"
  homepage "https://github.com/phpgao/roost"
  version "0.2.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-arm64.tar.gz"
      sha256 "1674d5a65109063d1f0a60daf9522ae3ca3bf0a3f5bfde900392d5400d676ca7"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-darwin-amd64.tar.gz"
      sha256 "2359ebc1c94a22eee9f7e1ab557606c2c0bed147be7a42039f65bcad590ae005"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-arm64.tar.gz"
      sha256 "d631b8f2465b71d0cf6091e1b1b3ba034cf79a2ac8db2bcccb2138a67bf29ebc"
    else
      url "https://github.com/phpgao/roost/releases/download/v#{version}/roost-linux-amd64.tar.gz"
      sha256 "e1d9bfcfa6d28afea5251ac4f3a69c0408c9be1a8ee957536169b8fb50e304d9"
    end
  end

  def install
    bin.install "roost"
  end

  test do
    assert_match "roost", shell_output("#{bin}/roost --help 2>&1", 1)
  end
end
