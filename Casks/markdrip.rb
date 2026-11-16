cask "markdrip" do
  version "1.0.8"
  sha256 "2415b99b2b077d86b1a4b4153b2391af001050a0c780d825ae8330113aa5dcb3"

  url "https://markdrip.app/releases/#{version}/markdrip-#{version}.dmg"
  name "Markdrip"
  desc "Private, local-first meeting notes"
  homepage "https://markdrip.app/"

  livecheck do
    skip "Versioning is managed by the manually maintained Markdrip vendor tap"
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Markdrip.app"
end
