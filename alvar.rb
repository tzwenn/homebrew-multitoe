require 'formula'

class Alvar < Formula
  homepage 'http://virtual.vtt.fi/virtual/proj2/multimedia/alvar/index.html'
  url 'https://github.com/tzwenn/alvar.git', :branch => 'master'
  version '2.0.0'

  depends_on 'opencv'
  depends_on 'tinyxml'
  depends_on 'cmake' => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
