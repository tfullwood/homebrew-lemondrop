class Lemondrop < Formula
    desc "Simple CLI to split and prettify large JSON files"
    homepage "https://github.com/tfullwood/lemondrop"
    url "https://github.com/tfullwood/lemondrop.git", :tag => "v0.0.1", :revision => "682baa4630cbfbbb102509cd06b28d0c0f15a89e"
    head "https://github.com/tfullwood/lemondrop.git", :branch => "master"
  
    def install
      bin.install "bin/build/lemondrop"
    end
  
    def caveats; <<~EOS
      Run `lemondrop [file] <options>` to split and prettify files.
      EOS
    end
  
    test do
      system "lemondrop", "--version"
    end
  end