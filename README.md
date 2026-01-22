# Spree Legacy Webhooks

Legacy HTTP webhooks extension for [Spree Commerce](https://spreecommerce.org), an open source e-commerce platform built with Ruby on Rails.

This extension provides the legacy callback-based webhook system for Spree. Consider migrating to the new event-based webhooks available in `spree_api`.

## Features

- HTTP webhook notifications for model changes (create, update, delete)
- Webhook subscribers management via Admin panel and Platform API
- Support for custom event filtering
- Signature verification for webhook payloads

## Installation

1. Add this extension to your Gemfile:

    ```ruby
    gem 'spree_legacy_webhooks'
    ```

2. Install the gem:

    ```bash
    bundle install
    ```

3. Run the install generator:

    ```bash
    bundle exec rails g spree_legacy_webhooks:install
    ```

4. Restart your server

## Usage

### Disabling webhooks temporarily

You can disable webhook dispatching temporarily using:

```ruby
Spree::LegacyWebhooks.disable_webhooks do
  # Your code here - no webhooks will be fired
end
```

Or set it globally:

```ruby
Spree::LegacyWebhooks.disabled = true
```

## Developing

1. Create a dummy app:

    ```bash
    bundle update
    bundle exec rake test_app
    ```

2. Add your new code

3. Run tests:

    ```bash
    bundle exec rspec
    ```

When testing your application's integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_legacy_webhooks/factories'
```

## Releasing a new version

```shell
bundle exec gem bump -p -t
bundle exec gem release
```

For more options please see [gem-release README](https://github.com/svenfuchs/gem-release)

## Contributing

If you'd like to contribute, please take a look at the
[instructions](CONTRIBUTING.md) for installing dependencies and crafting a good
pull request.

## License

Spree Legacy Webhooks is released under the [AGPL-3.0 License](LICENSE.md).
