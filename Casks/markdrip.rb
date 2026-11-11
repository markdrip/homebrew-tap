cask "markdrip" do
  version "1.0.5"
  sha256 "b2d8af69726bc1b00e42fdf4c15f86977be6c111966fc01ffa295697fdc7e2a8"

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
