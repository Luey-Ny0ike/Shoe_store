require 'bundler/setup'
Bundler.require(:default)
also_reload('lib/**/*.rb')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

get '/' do
  @stores = Store.all
  @shoes = Shoe.all
  erb :index
end
