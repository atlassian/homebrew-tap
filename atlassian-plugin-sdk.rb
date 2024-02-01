# typed: false
# frozen_string_literal: true

# Atlassian Plugin SDK formula
class AtlassianPluginSdk < Formula
  desc "Set of tools and dependencies for plugins on Atlassian server applications"
  homepage "https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation"
  url "https://packages.atlassian.com/mvn/maven-external/com/atlassian/amps/atlassian-plugin-sdk/8.2.9/atlassian-plugin-sdk-8.2.9.tar.gz"
  sha256 "0e64fc8a2f823342f21b1805ae3ca8b4ed4945990d876a78f49f6835ce09ddbe"

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
