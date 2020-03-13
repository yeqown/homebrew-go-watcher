# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GoQrcode < Formula
    desc "go-qrcode could generate QR Code image for your custom content"
    homepage "https://github.com/yeqown/go-qrcode"
    url "https://github.com/yeqown/go-qrcode/releases/download/v1.2.1/go-qrcode.osx.tar.gz"
    sha256 "7ec5ce8837ba38ebf628a63b016e06f0079d1699b072e2b3ed0b0156206ff6c9"
    # depends_on "cmake" => :build
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # Remove unrecognized options if warned by configure
      # system "./configure", "--disable-debug",
      #                       "--disable-dependency-tracking",
      #                       "--disable-silent-rules",
      #                       "--prefix=#{prefix}"
      # system "cmake", ".", *std_cmake_args
      # system "make", "install" # if this fails, try separate make/make install steps
      # system "tar -zxvf go-watcher.osx.tar.gz"
      bin.install "go-qrcode"
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test go-watcher`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  
