cask "markdrip" do
  version "0.1.3"
  sha256 "c1d89866e059612b69ce71b90444abad42105f5ed2c4926408b0520dffa13cb2"

  url "https://markdrip.app/releases/#{version}/markdrip-#{version}.dmg"
  name "Markdrip"
  desc "Private, local-first meeting notes"
  homepage "https://markdrip.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Markdrip.app"

  caveats <<~EOS
    Markdrip is unsigned. On first launch, open Finder, right-click Markdrip,
    choose Open, then confirm. Do not disable Gatekeeper.
  EOS
end
