class API
  module Parsers
    class CamelCaseJson
      def initialize(parser = Grape::Parser::Json)
        @parser = parser
      end

      def call(object, env)
        underscored(@parser.call(object, env))
      end

      private

      def underscored(object)
        case object
        when Array
          object.map { |item| underscored(item) }
        when Hash
          hash = {}
          object.each_pair do |key, value|
            hash[key.underscore] = underscored(value)
          end
          hash
        else
          object
        end
      end
    end
  end
end
