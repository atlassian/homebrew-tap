# typed: false
# frozen_string_literal: true

# Atlassian Plugin SDK formula, pinned to 9.11.2
class AtlassianPluginSdkAT9112 < Formula
  desc "Set of tools and dependencies for plugins on Atlassian server applications"
  homepage "https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation"
  url "https://packages.atlassian.com/mvn/maven-external/com/atlassian/amps/atlassian-plugin-sdk/9.11.2/atlassian-plugin-sdk-9.11.2.tar.gz"
  sha256 "5b1060dbc1224dd3cfeb3ffcb6e30d3eb0020af6c8e698c2b02d07a779e4b20b"

  keg_only :versioned_formula

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
      https://developer.atlassian.com/server/framework/atlassian-sdk/amps-sdk-release-notes

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
