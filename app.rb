require 'bundler/setup'
Bundler.require(:default)
also_reload('lib/**/*.rb')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

get '/' do
  @shops = Shop.all
  @shoes = Shoe.all
  erb :index
end
