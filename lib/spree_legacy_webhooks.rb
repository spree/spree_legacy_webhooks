# frozen_string_literal: true

require 'spree_core'
require 'spree_api'
require 'spree_admin'
require 'spree_extension'
require 'spree_legacy_webhooks/version'

module Spree
  module LegacyWebhooks
    def self.disable_webhooks
      prev_value = disabled?
      RequestStore.store[:disable_spree_legacy_webhooks] = true
      yield
    ensure
      RequestStore.store[:disable_spree_legacy_webhooks] = prev_value
    end

    def self.disabled?
      RequestStore.fetch(:disable_spree_legacy_webhooks) { false }
    end

    def self.disabled=(value)
      RequestStore.store[:disable_spree_legacy_webhooks] = value
    end
  end
end

require 'spree_legacy_webhooks/engine'
