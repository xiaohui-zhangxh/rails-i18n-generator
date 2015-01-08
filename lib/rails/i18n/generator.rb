require "rails/i18n/generator/version"

module Rails
  module I18n
    module Generator
      Configuration = Struct.new(:commented)

      class Railtie < ::Rails::Railtie
        config.rails_i18n_generator = Rails::I18n::Generator::Configuration.new(false)

        generators do |app|
          if ::Rails::VERSION::STRING >= '3.2'
            Rails::Generators.configure!(app.config.generators)
          end

          require 'rails/i18n/generator/helpers'
          require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'
          require 'rails/generators/rails/model/model_generator'
          Rails::Generators::ModelGenerator.send(:hook_for, 'rails_i18n')
          Rails::Generators::ModelGenerator.send(:class_option, 'rails_i18n', :default => 'rails_i18n')
          Rails::Generators::ScaffoldControllerGenerator.send(:hook_for, 'rails_i18n')
          Rails::Generators::ScaffoldControllerGenerator.send(:class_option, 'rails_i18n', :default => 'rails_i18n')
        end
      end
    end
  end
end
