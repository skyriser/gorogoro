require 'slack-ruby-bot'

class Ikaduti < SlackRubyBot::Bot
  command 'おはよう' do |client, data, match|
    client.say(text: '＜おはよう、司令官！今日も一日頑張りましょー？', channel: data.channel)
  end
  command 'おやすみ' do |client, data, match|
    client.say(text: '＜おやすみなさい！司令官！ゆーーっくり、休むといいわ！', channel: data.channel)
  end
  command 'ゴロゴロ', 'ごろごろ' do |client, data, match|
    s = [
      '＜司令官、私がいるじゃない！',
      '＜雷よ！かみなりじゃないわ！そこのとこもよろしく頼むわねっ！',
      '＜元気ないわねーそんなんじゃ駄目よぉ！',
      '＜そうそう。もーっと私に頼っていいのよ！',
      '＜はーい！司令官。行っきますよー！',
      '＜雷、司令官のために出撃しちゃうねっ',
      'なによもう、雷は大丈夫なんだから！'
    ]
    client.say(text: s.sample, channel: data.channel)
  end
  command 'ランチ', 'はらへ', 'お腹空いた', 'おなかすいた' do |client, data, match|
    s = [
      '＜もう、さっき食べたでしょ！',
      '＜ゴロゴロー。',
      '＜っ高速修復材',
      '＜っボーキサイト',
      '＜さっき魚を釣って来たわ。一緒に食べましょう？',
      '＜おなかが空いたなら、お肉を食べればいいじゃない！',
      '＜金曜日はカレーを食べるといいと思うわ！',
    ]
    client.say(text: s.sample, channel: data.channel)
  end
end

Ikaduti.run
