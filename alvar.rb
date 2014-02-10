require 'formula'

class Alvar < Formula
  homepage 'http://virtual.vtt.fi/virtual/proj2/multimedia/alvar/index.html'
  url 'https://github.com/tzwenn/alvar.git', :branch => 'master'
  version '2.0.0'

  depends_on 'homebrew/science/opencv'
  depends_on 'tinyxml'
  depends_on 'cmake' => :build

  option :cxx11

  def install
    ENV.cxx11 if build.cxx11?

    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
