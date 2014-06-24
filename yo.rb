require "formula"

class Yo < Formula
  homepage "https://github.com/tcnksm/yo"
  version '0.1.1'

  if Hardware.is_64_bit?
    url "https://github.com/tcnksm/yo/releases/download/v0.1.1/yo_0.1.1_darwin_amd64.zip"
    sha1 "721c6e9550fdad565d5958751cebbc3cf34d91fb"
  else
    url "https://github.com/tcnksm/yo/releases/download/v0.1.1/yo_0.1.1_darwin_386.zip"
    sha1 "02b5ee54acf8da18ac6a9f5cf15c0a0d55e4ade0"
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
