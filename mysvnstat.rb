# -*- coding: utf-8 -*-
require 'sinatra/base'
require 'sinatra/contrib/all'
require 'haml'

class MySvnstat < Sinatra::Base
  enable :inline_templates
  enable :logging
  set :haml, {:format => :html5}
  set :server, 'webrick'
  register Sinatra::Contrib
  
  get '/' do
    @title = "main"
    haml :index
  end

  post '/upload' do
    haml :index
  end
  
  get '/dailylog.xml' do
    content_type 'text/xml'
    <<"SAMPLEXML"
<?xml version="1.0" encoding="UTF-8"?>
<log>
<logentry revision="2920"><author>y.okazawa</author><date>2012-11-19T06:28:20.853937Z</date><paths><path action="M" kind="">/trunk/imssol-vc-logic-parent/imssol-vc-common-logic/src/main/java/jp/co/imssol/vc/common/logic/impl/CommonItemSearchLogicImpl.java</path></paths><msg>Merge branch 'feature/telorder' into develop</msg></logentry>
<logentry revision="2919"><author>y.okazawa</author><date>2012-11-19T05:29:49.092559Z</date><paths><path action="M" kind="">/trunk/imssol-vc-logic-parent/imssol-vc-common-logic/src/main/java/jp/co/imssol/vc/common/logic/impl/CommonItemSearchLogicImpl.java</path><path action="M" kind="">/trunk/templates/contents/isetan/onlinestore/telitemsearchTest.html</path></paths><msg>商品検索（TEL注）

管理プロパティ名を変更します。</msg></logentry>
</log>
SAMPLEXML
  end
end
