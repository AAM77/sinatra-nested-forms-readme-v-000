require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :new
  end #get '/'

  post '/student' do
    @student = Student.new(params[:student])

    params[:student][:courses].each do |details|
      Course.new(details)
    end #each |details|

    @courses = Course.all

    erb :student
end #post '/student'
