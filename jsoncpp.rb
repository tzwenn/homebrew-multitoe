require "formula"

class Jsoncpp < Formula
  homepage "https://github.com/open-source-parsers/jsoncpp"
  url "https://github.com/open-source-parsers/jsoncpp.git", :branch => 'master'
  version '0.6.0'

  depends_on "cmake" => :build

  option :universal
  option :cxx11

  def install
    ENV.cxx11 if build.cxx11?
    ENV.universal_binary if build.universal?

    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

end
