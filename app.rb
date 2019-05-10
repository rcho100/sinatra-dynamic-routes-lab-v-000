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
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    # @word_2 = params[:word2]
    # @word_3 = params[:word3]
    # @word_4 = params[:word4]
    # @word_5 = params[:word5]
  end
end
