ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'
#require_relative 'twitter.rb'


include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end
	
describe "SYTW Práctica2-Heroku" do
  

  it "Debe cargar el index " do
	get '/'
	assert last_response.ok?
  end  
  

  it "Debe mostrar el titulo de la pagina" do
	get '/'
	assert_match "<title> Popularidad Twitter </title>", last_response.body
  end
  
  it "Debe cargar el formulario" do
	get '/'
	assert_match "<p ><b>Introduzca su nombre en Twitter: </b></p>", last_response.body
	assert_match "<p ><b>¿Cuántos seguidores desea ver? </b></p>", last_response.body
 end

end
	
	
