class Anyenv < Formula
  desc "Simple wrapper for rbenv style environment managers"
  homepage "https://github.com/riywo/anyenv#readme"
  url "https://github.com/riywo/anyenv/archive/master.tar.gz"
  version "3cb8ad1b0dfd89ed5a53fcc9e076b371f6baabfc"
  sha256 "1ec91a73c74ae3e71fa66456a20f0eb83b1166b65fafe02a8c059da4d364aa28"
  head "https://github.com/riywo/anyenv.git"

  def install
    inreplace "libexec/anyenv", "ANYENV_ROOT=\"${HOME}/.anyenv\"", "ANYENV_ROOT=\"#{prefix}\""
    prefix.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.bashrc or ~/.zshrc file:
      echo 'eval "$(anyenv init -)"' >> ~/.your_profile
    EOS
  end

  test do
    shell_output("eval \"$(#{bin}/anyanv init -)\" && anyenv versions")
  end
end
