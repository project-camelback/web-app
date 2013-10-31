class MainApplication < Sinatra::Base
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == WEB_USER and password == WEB_PASSWORD
  end

  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    @time = Time.now
    @client = Octokit::Client.new \
      :login => MY_LOGIN,
      :password => MY_PASSWORD

    erb :'index'
  end
end