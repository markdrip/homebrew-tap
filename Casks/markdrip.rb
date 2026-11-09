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
    Markdrip is not notarized by Apple. On macOS 27, Gatekeeper blocks the
    first launch of this downloaded app and offers only Move to Trash or Done;
    there is no Open Anyway button, and right-clicking and choosing Open does
    not change that. Do not disable macOS security protections. Details:
    https://markdrip.app/download/
  EOS
end
