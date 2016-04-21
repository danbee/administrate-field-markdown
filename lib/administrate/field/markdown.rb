require "administrate/field/base"
require "rails"
require "kramdown"

module Administrate
  module Field
    class Markdown < Administrate::Field::Base
      VERSION = "0.0.2"

      class Engine < ::Rails::Engine
      end

      def rendered
        Kramdown::Document.new(data).to_html
      end

      def truncate
        data.to_s[0...truncation_length]
      end

      private

      def truncation_length
        options.fetch(:truncate, 50)
      end
    end
  end
end
