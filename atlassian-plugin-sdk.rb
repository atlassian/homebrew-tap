require 'formula'

class AtlassianPluginSdk < Formula
  desc "Atlassian Plugin SDK"
  homepage "https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation"
  url "https://packages.atlassian.com/maven/public/com/atlassian/amps/atlassian-plugin-sdk/8.2.2/atlassian-plugin-sdk-8.2.2.tar.gz"
  sha256 "a99fa410296b7f4e364eef22df25e715d96db8f272ed63206fc872a009112401"
  version "8.2.2"

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]

    # Install jars in libexec to avoid conflicts
    libexec.install Dir['*']

    # Symlink binaries
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.    
        
      Release Notes can be found here:
      https://developer.atlassian.com/server/framework/atlassian-sdk/amps-sdk-release-notes/
    EOS
  end
end
