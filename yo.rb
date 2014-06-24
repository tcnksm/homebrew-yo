require "formula"

class Yo < Formula
  homepage "https://github.com/tcnksm/yo"
  version '0.1.0'

  if Hardware.is_64_bit?
    url "https://github.com/tcnksm/yo/releases/download/v0.1.0/yo_0.1.0_darwin_amd64.zip"
    sha1 "cf5201a994d9027654e1262a81658ed364aedc5a"
  else
    url "https://github.com/tcnksm/yo/releases/download/v0.1.0/yo_0.1.0_darwin_386.zip"
    sha1 "db4db47eb203b8cf1c9d8e765e4feafa578f108a"
  end

  depends_on :arch => :intel

  def install
    bin.install 'yo'
    print <<-EOF

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
