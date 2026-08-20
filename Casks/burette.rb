# frozen_string_literal: true

cask "burette" do
  version "2.3.4"
  sha256 "62e4630a25ff7ce99407f0f53e8c418e3717397017ac018cfdd19a92b2fe6a07"

  url "https://github.com/SergeiNikolenko/Burette/releases/download/v#{version}/Burette-#{version}.zip"
  name "Burette"
  desc "Finder-native molecular structure previews"
  homepage "https://github.com/SergeiNikolenko/Burette"

  depends_on macos: :monterey

  app "Burette.app"

  zap trash: [
    "~/Library/Application Support/com.local.BuretteV10",
    "~/Library/Application Support/com.local.BurreteV10",
    "~/Library/Caches/com.local.BuretteV10",
    "~/Library/Caches/com.local.BurreteV10",
    "~/Library/Containers/com.local.BuretteV10",
    "~/Library/Containers/com.local.BuretteV10.Preview",
    "~/Library/Containers/com.local.BuretteV10.Thumbnail",
    "~/Library/Containers/com.local.BurreteV10",
    "~/Library/Containers/com.local.BurreteV10.Preview",
  ]

  caveats <<~EOS
    Open Burette once after installation so macOS registers the Quick Look extension.
  EOS
end
