# frozen_string_literal: true

require_relative './models/user'

require 'sinatra'

get '/' do
  {
    'users' => User.auth('alice123', 'alicepass')
  }
    .to_json
end
