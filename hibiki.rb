require 'slack-ruby-bot'

class Hibiki < SlackRubyBot::Bot
  command 'おはよう' do |client, data, match|
    s = [
      '司令官、作戦命令を。',
      '了解、響、出撃する。',
      '不死鳥の名は伊達じゃない。出るよ。',
      'やるさ。',
      'さて、やりますか。'
    ]
    client.say(text: s.sample, channel: data.channel)
  end
  command 'おやすみ' do |client, data, match|
    s = [
      '沈まんさ…',
      '司令官、疲れてない？'
    ]
    client.say(text: s.sample, channel: data.channel)
  end
end

Hibiki.run
