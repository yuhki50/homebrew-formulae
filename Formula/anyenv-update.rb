class AnyenvUpdate < Formula
  desc "Update all **env and all plugins."
  homepage "https://github.com/znz/anyenv-update#readme"
  url "https://github.com/znz/anyenv-update/archive/master.tar.gz"
  version "b6cefdb4aeaf930a9e576c515cd557f3acf3ab91"
  sha256 "22b15e0613c67eda5c6c13b7b96e87755a6ca1311c39c2d68c379deed4ea0613"
  head "https://github.com/znz/anyenv-update.git"

  depends_on "anyenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    shell_output("eval \"$(#{bin}/anyanv init -)\" && anyenv update -n")
  end
end
