require 'formula'

class Libmonome < Formula
  head 'https://github.com/monome/libmonome.git'
  homepage 'http://monome.org'
  md5 'bf2a21ef4ccc361a6b33f099f9fade12'
  version '1.1'
  depends_on 'liblo'

  def install
    system "mkdir #{prefix}/lib"
    system "mkdir #{prefix}/lib/pkgconfig"
    system "./waf configure --prefix=#{prefix}"
    system "./waf build"
    system "./waf install"
  end

end
