require "formula"

class Yo < Formula
  homepage "https://github.com/tcnksm/yo"
  version '0.1.1'

  if Hardware.is_64_bit?
    url "https://github.com/tcnksm/yo/releases/download/v0.1.1/yo_0.1.1_darwin_amd64.zip"
    sha1 "c40eed6e59dea1c8f6a62e19e60732f0c4eb3668"
  else
    url "https://github.com/tcnksm/yo/releases/download/v0.1.1/yo_0.1.1_darwin_386.zip"
    sha1 "31009ab4e7d7f2d6e2de3cb4cfea43755dd2c572"
  end

  depends_on :arch => :intel

  def install
    bin.install 'yo'
  end

  def caveats
    msg = <<-'EOF'

$$\     $$\
\$$\   $$  |
 \$$\ $$  $$$$$$\
  \$$$$  $$  __$$\
   \$$  /$$ /  $$ |
    $$ | $$ |  $$ |
    $$ | \$$$$$$  |
    \__|  \______/


EOF
  end
end
