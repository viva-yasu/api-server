class API::V1::Tests < Grape::API

  resource :tests do

    desc 'test get'
    params do
    end
    get do
      binding.pry

      status 200
      { hello_world: :thanks }
    end

    desc 'test post'
    params do
      requires :first_param, type: String
    end
    post do
      p params
      status 200
      { hello_world: 'good job' }
    end
  end
end
