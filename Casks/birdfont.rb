cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.8.9"
    sha256 "0f2e4f5398e0c9ad90f13c3e18910686d34f29e6e49b12c771ddb3e2f03d8589"
  elsif MacOS.version <= :catalina
    version "4.8.10"
    sha256 "067755cd2e02a70997aac3cb29a49ab2ec1c304c30d89f58b96add0df7802c88"
  else
    version "4.9.7"
    sha256 "e4fa3b56554c803e9036d3122f8d6c2d2e057dfbe731ca269134c2c2d85d2458"

    livecheck do
      url "https://birdfont.org/purchase.php"
      strategy :page_match
      regex(%r{href=.*?/birdfont-(\d+(?:\.\d+)*)-free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Free font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :el_capitan"

  app "BirdFontNonCommercial.app"
end
