require 'formula'

class AtlassianPluginSdk < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'https://packages.atlassian.com/maven/public/com/atlassian/amps/atlassian-plugin-sdk/6.3.7/atlassian-plugin-sdk-6.3.7.tar.gz'
  sha256 'be2211b8bc08ee6cc7019fd248d8135322274e6cb44269d00f17c601fb00ab46'  

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
      Release notes can be found at https://developer.atlassian.com/docs/amps-sdk-release-notes/amps-sdk-6-x-and-up-release-notes

      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end
end
