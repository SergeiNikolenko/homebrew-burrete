# frozen_string_literal: true

cask "burrete" do
  version "1.0.26"
  sha256 "b2fbc332b509098a01e7605e32b28cebeb6e65ba3f886407820f0db0b90a4174"

  url "https://github.com/SergeiNikolenko/Burrete/releases/download/v#{version}/Burrete-#{version}.zip"
  name "Burrete"
  desc "Finder-native molecular structure previews"
  homepage "https://github.com/SergeiNikolenko/Burrete"

  depends_on macos: :monterey

  app "Burrete.app"

  zap trash: [
    "~/Library/Application Support/com.local.BurreteV10",
    "~/Library/Caches/com.local.BurreteV10",
    "~/Library/Containers/com.local.BurreteV10",
    "~/Library/Containers/com.local.BurreteV10.Preview",
  ]

  caveats <<~EOS
    Open Burrete once after installation so macOS registers the Quick Look extension.
  EOS
end
