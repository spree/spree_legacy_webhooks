# frozen_string_literal: true

module Spree
  module LegacyWebhooks
    VERSION = '1.0.0'.freeze

    def self.version
      VERSION
    end

    def self.gem_version
      Gem::Version.new(VERSION)
    end
  end
end
