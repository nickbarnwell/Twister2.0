# encoding: UTF-8
require 'sinatra'
require 'erb'

Appendages = ['Foot', 'Hand']
Sides = ['Left', 'Right']
Colours = ['Red','Green','Blue', 'Yellow']

get '/' do
	@appendage = Appendages.sample
	@side = Sides.sample
	@colour = Colours.sample
	puts @colour
	erb :index
end
not_found do
	status 404
	'That wasn\'t found, sorry. I mean this is a Twister spinner, what\'d you want, an FAQ?'
end

error do
	status 500
	'Something has gone wrong, we\'re probably looking into it (or passed out, it is NYE after all'
end