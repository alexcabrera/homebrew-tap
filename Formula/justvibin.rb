# typed: false
# frozen_string_literal: true

class Justvibin < Formula
  desc "CLI for scaffolding web application projects from curated templates"
  homepage "https://github.com/alexcabrera/justvibin"
  url "https://github.com/alexcabrera/justvibin/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "07c2316a53486abb563457cc3d0d08f7bb503387dba15db9ab4e4075420af710"
  license "MIT"
  version "0.1.0"

  depends_on "bash" => "4.0"
  depends_on "git"

  def install
    bin.install "justvibin"
  end

  def caveats
    <<~EOS
      For a prettier UI, install gum:
        brew install gum
    EOS
  end

  test do
    assert_match "justvibin v#{version}", shell_output("#{bin}/justvibin --version")
  end
end
