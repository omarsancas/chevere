class Picture < ActiveRecord::Base
  require "instagram"

  enable :sessions

  CALLBACK_URL = "http://localhost:3000/oauth/callback"

  Instagram.configure do |config|
    config.client_id = "ad3351bc0cf14fa382cb1f98e5de3218"
    config.client_secret = "7184596597f8456cb3515f1a3e3354f9"
    # For secured endpoints only
    #config.client_ips = '<Comma separated list of IPs>'
  end

  def self.hashtag_picture(hashtag)
  hashtag = hashtag.to_s
  client = Instagram.client(:access_token => session[:access_token])
  tags = client.tag_search(hashtag)
  html << "<h2>Tag Name = #{tags[0].name}. Media Count =  #{tags[0].media_count}. </h2><br/><br/>"
  for media_item in client.tag_recent_media(tags[0].name)
    html << "<img src='#{media_item.images.thumbnail.url}'>"
  end
  html
end
    
  end


end
