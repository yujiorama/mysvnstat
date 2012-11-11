# -*- coding: utf-8 -*-
require 'sinatra/base'
require 'sinatra/contrib/all'
require 'haml'

class MySvnstat < Sinatra::Base
  enable :inline_templates
  enable :logging
  set :server, 'webrick'
  register Sinatra::Contrib
  
  get '/' do
    @title = "main"
    haml :index
  end
end
