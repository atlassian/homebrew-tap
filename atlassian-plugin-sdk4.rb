require 'formula'

class AtlassianPluginSdk4 < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'httpd://packages.atlassian.com/maven/repository/public/com/atlassian/amps/atlassian-plugin-sdk/4.2.20/atlassian-plugin-sdk-4.2.20.tar.gz'
  sha256 '2fd4ab8ab242de84aeb9ce12566573c2397ccb11e7b5e33f9d47a5efef3d0a85'

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
      *** Please note that version 4.x of the SDK is provided only for legacy purposes ***
      **** It is recommended that you upgrade to a newer version unless you have a specifc need to use Maven 2.x or 3.0.x ***

      Further details about the latest version can be found at:
      https://developer.atlassian.com/display/DOCS/AMPS+SDK+5.0.0+Release+Notes

      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end
end
