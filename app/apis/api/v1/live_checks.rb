class API::V1::LiveChecks < Grape::API
  get 'livecheck' do

    status 200
    { hello_ooo: :world }
  end
end
