# typed: false
# frozen_string_literal: true

class Relay < Formula
  desc "Lightweight cross-platform SSH client built with Tauri + Rust"
  homepage "https://relay-web.shadowscale.dev"
  version "0.1.0"

  # These URLs will be updated when we create GitHub Releases
  if Hardware::CPU.arm?
    url "https://github.com/relixdev/relay-ssh/releases/download/v#{version}/relay-ssh_#{version}_aarch64.dmg"
    sha256 "PLACEHOLDER_ARM64_SHA256"
  else
    url "https://github.com/relixdev/relay-ssh/releases/download/v#{version}/relay-ssh_#{version}_x64.dmg"
    sha256 "PLACEHOLDER_X64_SHA256"
  end

  def install
    # Extract .app from .dmg and install to /Applications via cask-like behavior
    prefix.install "relay-ssh.app"
  end

  def caveats
    <<~EOS
      Relay has been installed to:
        #{prefix}/relay-ssh.app

      To open:
        open #{prefix}/relay-ssh.app

      Or add to your Applications folder:
        ln -sf #{prefix}/relay-ssh.app /Applications/Relay.app
    EOS
  end
end
