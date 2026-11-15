cask "markdrip" do
  version "1.0.6"
  sha256 "14c947af0ee8dbf36898bda37477ac601497019d5da86fd7c84be17252233b87"

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
