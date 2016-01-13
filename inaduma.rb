require 'slack-ruby-bot'

class Inaduma < SlackRubyBot::Bot
  command 'おはよう' do |client, data, match|
    client.say(text: '＜お、おはようございます！きょ、今日も一緒に頑張りましょ〜・・・？', channel: data.channel)
  end
  command 'おやすみ' do |client, data, match|
    client.say(text: '＜お疲れさまなのです。明日もよろしくおねがいします、なのです。', channel: data.channel)
  end
  command 'はわわ' do |client, data, match|
    client.say(text: '＜はわわ・・・！びっくりしたのです・・・', channel: data.channel)
  end
  command '本気' do |client, data, match|
    client.say(text: '＜電の本気を見るのです！', channel: data.channel)
  end
end

Inaduma.run
