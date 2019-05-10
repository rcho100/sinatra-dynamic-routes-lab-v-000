require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse!
    # "#{@reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = (@number * @number).to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @phrase
  end
end
