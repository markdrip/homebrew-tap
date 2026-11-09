cask "markdrip" do
  version "1.0.4"
  sha256 "023ab3b1da0da3abae2dc9ba5022fa2c7e35a900fdfcd18a46cb89a14c21327d"

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

  caveats <<~EOS
    If macOS blocks Markdrip from opening, see the official download page for
    details: https://markdrip.app/download/
  EOS
end
