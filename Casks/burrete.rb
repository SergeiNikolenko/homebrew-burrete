# frozen_string_literal: true

cask "burrete" do
  version "1.0.10"
  sha256 "bed649982a89bacf51f7aefccd9f34b143e070450148d01484bd7a47b21ad966"

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
