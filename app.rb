require 'bundler/setup'
Bundler.require(:default)
also_reload('lib/**/*.rb')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

get '/' do
  @shops = Shop.all
  @shoes = Shoe.all
  erb :index
end

post '/index/shop/new' do
  @store_name = params.fetch('name')
  Shop.create(name: @store_name)
  redirect '/'
end

post '/index/shoe/new' do
  @shoe_name = params.fetch('name')
  Shoe.create(name: @shoe_name)
  redirect '/'
end
