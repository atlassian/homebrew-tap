require 'formula'

class AtlassianPluginSdk5 < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'http://maven.atlassian.com/content/repositories/atlassian-public/com/atlassian/amps/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  sha256 'd4381986d3c44a39b7b896ce270598d6980ae79f26f51f29cb367f80ab26f74e'

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
      *** Please note that version 5.x of the SDK is provided only for legacy purposes ***
      **** It is recommended that you upgrade to a newer version unless you have a specifc need to use Oracle Java JDK 7 ***

      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end
end
