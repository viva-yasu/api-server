class API < Grape::API
  format :json
  mount API::V1 => '/v1'

  version 'v1', using: :path, vendor: 'no-silver'
end
