require 'slack-ruby-bot'

class Ikaduti < SlackRubyBot::Bot
  command 'おはよう' do |client, data, match|
    client.say(text: '＜おはよう司令官！今日も一緒に頑張りましょー！', channel: data.channel)
  end
  command 'おやすみ' do |client, data, match|
    client.say(text: '＜おやすみ司令官！もーっと私に頼っていいのよ？', channel: data.channel)
  end
  command 'ゴロゴロ' do |client, data, match|
    client.say(text: '＜司令官、私がいるじゃない！', channel: data.channel)
  end
end

Ikaduti.run
