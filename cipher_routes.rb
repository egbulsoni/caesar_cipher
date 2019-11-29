# myapp.rb
require 'sinatra'

helpers do
  def caesar_cipher(str, rot)
    final = ''
    # alphabet = /[a-zA-Z]*/
    # guarantees the rotations will always be possible
    rot = rot % 26
    letter = ''
    str.each_char do |c|
      if (65..90-rot) === c.ord or (97..122-rot) === c.ord
        final << (c.ord + rot)
      elsif (90-rot..90) === c.ord or (122-rot..122) === c.ord
        final << (c.ord + rot) - 26
      else
        final << c.ord
      end
    end
    final
  end
end

set :public_folder, File.dirname(__FILE__) + '/views'

# get '/' do
#   msg = params['msg']
#   rot = params['rot']
#   erb :cipher, locals: {msg: msg, rot: rot}
# end

get '/' do
  erb :cipher
end

post '/' do
  @msg = params['msg']
  @rot = params['rot'].to_i
  erb :cipher
end
