# Rails::I18n::Generator

Creates yaml locale files for models and views when using the model / scaffold_controller generators.

Locale files are generated for all locales listed in I18n.available_locales.

## Description

Creates yaml locale files for models and views when using the model / scaffold_controller generators.

Locale files are generated for all locales listed in I18n.available_locales.

#### Currently support ORMs

* ActiveRecord
* ActiveModel
* Mongoid

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-i18n-generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-i18n-generator

## Usage

Make sure you have something like this in application.rb:

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

Then below command will generate locale files properly

    $ rails g scaffold Article title:string body:text
    $ rails g model Article title:string body:text
    $ rails g scaffold_controller Article
    $ rails g rails_i18n:model Article title:string body:text
    $ rails g rails_i18n:scaffold_controller Article

## Configuration

Create config/initializers/rails_i18n_generators.rb

    MyApplication::Application.config.rails_i18n_generator.tap do |g|
    
      # Whether content in the generated locale files should be commented out (default: false)
      g.commented = true 

    end


## Contributing

1. Fork it ( https://github.com/xiaohui-zhangxh/rails-i18n-generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
