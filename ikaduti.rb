require 'slack-ruby-bot'

class Ikaduti < SlackRubyBot::Bot
  command 'ゴロゴロ' do |client, data, match|
    client.say(text: '＜司令官、私がいるじゃない！', channel: data.channel)
  end
end

Ikaduti.run
