require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    (number**2).to_s
  end

  get '/say/:number/:phrase' do
    string_array = []
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do
      string_array.push(phrase)
    end
    string_array.join('. ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{[params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == 'add'
      (number1 + number2).to_s
    elsif operation == 'subtract'
      (number1 - number2).to_s
    elsif operation == 'multiply'
      (number1 * number2).to_s
    elsif operation == 'divide'
      (number1 / number2).to_s
    else
      'Error'
    end
  end

end
