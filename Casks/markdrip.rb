cask "markdrip" do
  version "0.1.1"
  sha256 "514b639760f6e6d31f2d914524c6390fa1f9362541e661ff42e91ebd4a0674c8"

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
