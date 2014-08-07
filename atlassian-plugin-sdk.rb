require 'formula'

class AtlassianPluginSdk < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'https://maven.atlassian.com/repository/public/com/atlassian/amps/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  sha1 '9db113bd0b8c8226cb246b81c1bcdf5ea9f4caad'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]

    # Install jars in libexec to avoid conflicts
    libexec.install Dir['*']

    # Symlink binaries
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<-EOS.undent
      *** Please note we have dropped support for Maven 2.x and Maven 3.0.x ***
      Release notes can be found at https://developer.atlassian.com/display/DOCS/AMPS+SDK+5.0.0+Release+Notes
      
      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end
end
