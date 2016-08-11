require_relative 'config/environment'

class App < Sinatra::Base

get '/reversename/:name' do 
    @user_name = params[:name].reverse.downcase
    "#{@user_name}!"
  end

  get '/square/:number' do 
    @product = (params[:number].to_i * params[:number].to_i).to_s
    "#{@product}"
  end

  get '/say/:number/:phrase' do 
    @formatted_phrase = params[:phrase].split("%20").join(" ")
    @times = params[:number].to_i
    "#{@formatted_phrase}\n"*@times 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation].to_s == "add"
      new_no = (params[:number1].to_i + params[:number2].to_i).to_s
      "#{new_no}"
    elsif params[:operation].to_s == "subtract"
      new_no = (params[:number2].to_i - params[:number1].to_i).to_s
      "#{new_no}"
    elsif params[:operation].to_s == "multiply"
      new_no = (params[:number1].to_i * params[:number2].to_i).to_s
      "#{new_no}"
    elsif params[:operation].to_s == "divide"
    new_no = (params[:number1].to_i / params[:number2].to_i).to_s
      "#{new_no}"
    else
      "404"
    end
  end


end