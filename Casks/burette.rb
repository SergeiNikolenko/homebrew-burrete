# frozen_string_literal: true

cask "burette" do
  version "1.0.29"
  sha256 "25a8876daa2b2cc5302e8c1575dc8427b8bd8e2f6ed724c2e1df44676108fad9"

  url "https://github.com/SergeiNikolenko/Burette/releases/download/v#{version}/Burrete-#{version}.zip"
  name "Burette"
  desc "Finder-native molecular structure previews"
  homepage "https://github.com/SergeiNikolenko/Burette"

  depends_on macos: :monterey

  app "Burrete.app"

  zap trash: [
    "~/Library/Application Support/com.local.BurreteV10",
    "~/Library/Caches/com.local.BurreteV10",
    "~/Library/Containers/com.local.BurreteV10",
    "~/Library/Containers/com.local.BurreteV10.Preview",
  ]

  caveats <<~EOS
    Open Burette once after installation so macOS registers the Quick Look extension.
  EOS
end
