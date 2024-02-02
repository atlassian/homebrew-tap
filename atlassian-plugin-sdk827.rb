# typed: false
# frozen_string_literal: true

# Atlassian Plugin SDK formula
class AtlassianPluginSdk827 < Formula
  desc "Set of tools and dependencies for plugins on Atlassian server applications"
  homepage "https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation"
  url "https://packages.atlassian.com/maven/public/com/atlassian/amps/atlassian-plugin-sdk/8.2.7/atlassian-plugin-sdk-8.2.7.tar.gz"
  sha256 "77eb7ba604921042642f1d3a93b17f7e4dada572ca1ae12d5a2696ceee960f76"

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]

    # Install jars in libexec to avoid conflicts
    libexec.install Dir["*"]

    # Symlink binaries
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      Release Notes can be found here:
      https://developer.atlassian.com/docs/amps-sdk-release-notes/amps-sdk-6-x-and-up-release-notes

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end

  test do
    system bin/"atlas-version"
  end
end
