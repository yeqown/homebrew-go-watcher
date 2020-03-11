# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TunnelHelper < Formula
    desc "tunnel-helper help useful ssh tunnel situation"
    homepage ""
    url "https://github.com/yeqown/infrastructure/releases/download/v0.3.4/tunnel-helper.tar.gz"
    sha256 "52957f594bae9a4a53de22b7c2a4865215879ca4875a80a953f6838999eb149e"
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
      bin.install "tunnel-helper"
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
  