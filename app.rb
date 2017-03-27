require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/grab') do
  @height = params.fetch('height').to_i
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @weight = params.fetch('weight').to_i
  @distance = params.fetch('distance').to_i
  @speed = params.fetch('speed')
  @output = Parcel.new(@height, @length, @width, @weight).shippingcost(@distance,@speed)
  erb(:cost)
  end
