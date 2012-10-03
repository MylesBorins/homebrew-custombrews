require 'formula'

class Serialosc < Formula
  homepage 'http://docs.monome.org/doku.php?id=app:serialosc'
  url 'https://github.com/monome/serialosc/tarball/1.2a'
  sha1 '82cbc0aa09367dee79a16d1163e35d7c7f47bec3'
  head 'https://github.com/monome/serialosc.git'
  version '1.2a'

  depends_on 'liblo'
  depends_on 'confuse'
  depends_on 'libmonome'


  def install
    system "./waf configure --prefix=#{prefix}"
    system "./waf build"
    system "./waf install"
  end
end
