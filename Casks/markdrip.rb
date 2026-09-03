cask "markdrip" do
  version "0.1.2"
  sha256 "99614851fb8595bf3e2430866e51d653e4f8228ef61cf1a1050a051ed5b86e58"

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
