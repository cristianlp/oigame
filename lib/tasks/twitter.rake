# encoding: utf-8
namespace :oigame do
  desc "Guardar mensajes relaciones con oiga.me"
  task(:tweets => :environment) do
    TweetStream::Client.new.follow('217754222') do |status|
      t = Tweet.create(:msg => status.text)
      puts "TWITTER msg :" + t.msg
    end
  end
end
