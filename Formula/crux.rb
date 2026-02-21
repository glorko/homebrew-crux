class Crux < Formula
  desc "AI-native dev environment orchestrator — one command to run your stack and see what's going on"
  homepage "https://github.com/glorko/crux"
  license "MIT"
  head "https://github.com/glorko/crux.git", branch: "main"

  depends_on "go" => :build
  depends_on "wezterm" => :recommended

  def install
    system "go", "build", "-o", bin/"crux", "./cmd/playground"
    system "go", "build", "-o", bin/"crux-mcp", "./cmd/mcp"
  end

  test do
    assert_match "version", shell_output("#{bin}/crux --version")
  end
end
