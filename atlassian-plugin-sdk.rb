require 'formula'

class AtlassianPluginSdk < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'https://packages.atlassian.com/maven/public/com/atlassian/amps/atlassian-plugin-sdk/6.3.10/atlassian-plugin-sdk-6.3.10.tar.gz'
  sha256 'e6ec5c5cc2af85397b352fb15cdc9ae136c058c0f5e8c8757a1b389b88930e64'

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
