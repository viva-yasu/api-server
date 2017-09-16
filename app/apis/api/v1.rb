class API::V1 < Grape::API
  format :json

  parser :json, API::Parsers::CamelCaseJson.new
  formatter :json, API::Formatters::CamelCaseJson.new

  mount LiveChecks
  mount Tests
end
