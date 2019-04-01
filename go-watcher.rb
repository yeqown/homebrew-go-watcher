# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GoWatcher < Formula
    desc "go-watcher for hot reloading with your command ~"
    homepage ""
    url "https://github.com/yeqown/go-watcher/releases/download/v2.0.1/go-watcher.osx.tar.gz"
    sha256 "a31218f8964343f3359b24f42f3cfff1d78725bdbc9c0f35ec7928e2a286f27e"
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
      bin.install "go-watcher"
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
  