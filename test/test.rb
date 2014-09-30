ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
#require_relative '../twitter.rb'
require_relative 'twitter.rb'


include Rack::Test::Methods
	
	def app
		Sinatra::Application
	end
	
	describe "SYTW P2-Heroku" do
  
  #Definir objeto para las pruebas

  it "Should return index" do
	get '/'
	assert last_response.ok?
  end  
  

  it "should return title" do
	get '/'
	assert_match "<title> Popularidad Twitter </title>", last_response.body
  end