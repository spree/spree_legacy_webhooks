# frozen_string_literal: true

lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_legacy_webhooks/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_legacy_webhooks'
  s.version     = Spree::LegacyWebhooks::VERSION
  s.authors     = ['Spark Solutions Sp. z o.o.', 'Vendo Connect Inc.']
  s.email       = 'hello@spreecommerce.org'
  s.summary     = 'Legacy webhooks system for Spree Commerce'
  s.description = 'HTTP webhooks for Spree Commerce using the legacy callback-based system. Consider migrating to the new event-based webhooks in spree_api.'
  s.homepage    = 'https://github.com/spree/spree_legacy_webhooks'
  s.license     = 'AGPL-3.0-or-later'

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/spree/spree_legacy_webhooks/issues',
    'changelog_uri' => "https://github.com/spree/spree_legacy_webhooks/releases/tag/v#{s.version}",
    'documentation_uri' => 'https://docs.spreecommerce.org/',
    'source_code_uri' => "https://github.com/spree/spree_legacy_webhooks/tree/v#{s.version}"
  }

  s.required_ruby_version = '>= 3.2'

  s.files        = Dir["{app,config,db,lib,vendor}/**/*", "LICENSE.md", "Rakefile", "README.md"].reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'

  s.add_dependency 'spree', '>= 5.0'
  s.add_dependency 'spree_admin', '>= 5.0'
  s.add_dependency 'spree_extension'

  s.add_development_dependency 'spree_dev_tools'
end
