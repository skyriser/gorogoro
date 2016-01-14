require 'slack-ruby-bot'

class Ikaduti < SlackRubyBot::Bot
  command 'おはよう' do |client, data, match|
    client.say(text: '＜おはよう、司令官！今日も一日頑張りましょー？', channel: data.channel)
  end
  command 'おやすみ' do |client, data, match|
    client.say(text: '＜おやすみなさい！司令官！ゆーーっくり、休むといいわ！', channel: data.channel)
  end
  command 'ゴロゴロ' do |client, data, match|
    client.say(text: '＜司令官、私がいるじゃない！', channel: data.channel)
  end
  command 'ごろごろ' do |client, data, match|
    client.say(text: '＜ごろごろー。', channel: data.channel)
  end
  command 'はらへ' do |client, data, match|
    client.say(text: '＜私のお手製お握りよ！:rice_ball:', channel: data.channel)
  end
  command 'おなかすいた' do |client, data, match|
    client.say(text: '＜もう、さっき食べたでしょ！', channel: data.channel)
  end
  command 'ランチ' do |client, data, match|
    s = [
      '＜もう、さっき食べたでしょ！',
      '＜ゴロゴロー。',
      '＜さっき魚を釣って来たわ。一緒に食べましょう！',
      '＜おなかが空いたら、お肉を食べればいいじゃない！？',
      '＜金曜日はカレーを食べるといいと思うわ！',
    ]
    client.say(text: s.sample, channel: data.channel)
  end
end

Ikaduti.run
