class Tweet < ActiveRecord::Base
  attr_accessible :text
  attr_accessor :text

  def self.last_messages(section)
    order('created_at DESC').limit(1).all
  end

  def text=(args)
    self.msg = args
  end

  def text
    self.msg
  end

  #def convert_tweet_to_html(string)
  #  string = string
  #end
end
