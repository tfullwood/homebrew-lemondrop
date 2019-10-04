class Lemondrop < Formula
    desc "Simple CLI to split and prettify large JSON files"
    homepage "https://github.com/tfullwood/lemondrop"
    url "https://github.com/tfullwood/lemondrop.git", :tag => "v1.0.0", :revision => "82c5a9febba9f2dae00b34bb078152a6ae23f8db"
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