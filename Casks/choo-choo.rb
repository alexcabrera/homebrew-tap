cask "choo-choo" do
  version "0.1.0"
  sha256 arm:   "38e782af0d254799472600cdf908131d2593c3162077edc8edff581fb0f94d49",
         intel: "f0d9af7fb7aa3f7fb50001f7916ca0548570b6e650af334b44dc975a7dfea27e"

  desc "A TUI orchestration layer for Crush coding agent"
  homepage "https://github.com/alexcabrera/choo-choo"
  url "https://github.com/alexcabrera/choo-choo/releases/download/v#{version}/choo-choo_darwin_#{arch}.tar.gz",
      verified: "github.com/alexcabrera/choo-choo"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "choo-choo"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/choo-choo"]
  end
end
