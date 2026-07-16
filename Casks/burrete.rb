# frozen_string_literal: true

cask "burrete" do
  version "1.0.28"
  sha256 "f54e491ecafc1b6532a798192a3f397f609fe71529f4e94ec5476b0c71502f6b"

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
