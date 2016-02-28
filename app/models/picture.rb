class Picture < ActiveRecord::Base

  def self.hashtag_picture(hashtag)
    hashtag = hashtag.to_s    
    tags = Instagram.tag_recent_media(hashtag)
    image =tags[0].images
    return image
  end
end
