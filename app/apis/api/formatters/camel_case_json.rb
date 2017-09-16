class API
  module Formatters
    class CamelCaseJson
      def initialize(formatter = Grape::Formatter::Json)
        @formatter = formatter
      end

      def call(object, env)
        @formatter.call(camelized(object), env)
      end

      private

      def camelized(object)
        case object
        when Array
          object.map { |item| camelized(item) }
        when Hash
          hash = {}
          object.each_pair do |key, value|
            hash[lower_camelize(key.to_s)] = camelized(value)
          end
          hash
        else
          object
        end
      end

      def lower_camelize(str)
        str.gsub(/_([a-z])/){$1.upcase}
      end
    end
  end
end
