require 'formula'

class Libmonome < Formula
  head 'https://github.com/TheAlphaNerd/libmonome.git'
  homepage 'http://monome.org'
  md5 'bf2a21ef4ccc361a6b33f099f9fade12'
  version '1.0'
  depends_on 'liblo'
  
  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

end


