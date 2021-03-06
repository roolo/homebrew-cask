cask "axe-edit-iii" do
  version "1.08.12"
  sha256 "c5593f00f6bae625e9b260fbed6666dfc18eacd856dff1177ecc13eb161c33c7"

  url "https://www.fractalaudio.com/downloads/Axe-Edit-III/Axe-Edit-III-OSX-v#{version.tr(".", "p")}.dmg"
  name "Axe-Edit III"
  desc "Editor software for the AXE-FX III"
  homepage "https://www.fractalaudio.com/axe-fx-iii-edit/"

  livecheck do
    url "https://www.fractalaudio.com/axe-fx-iii-edit/"
    strategy :page_match do |page|
      v = page[%r{href=.*?/Axe-Edit-III-OSX-v(\d+(?:p\d+)*)\.dmg}i, 1]
      v.tr("p", ".")
    end
  end

  app "Axe-Edit III.app"

  zap trash: "~/Library/Application Support/Fractal Audio/Axe-Edit III"
end
