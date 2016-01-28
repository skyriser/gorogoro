require 'slack-ruby-bot'
require './commander'

class Ikaduti < SlackRubyBot::Bot
  def self.command_ex(regex, &block)
    match Regexp.new("^(?<bot>[[:alnum:][:punct:]@<>]*)[\\s]+#{regex}$", Regexp::IGNORECASE), &block
    match Regexp.new("^(?<bot>[[:alnum:][:punct:]@<>]*)[\\s]+#{regex}[\\s]+(?<expression>.*)$", Regexp::IGNORECASE), &block
  end
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
  command 'ランチ', 'はらへ', 'はらへり', 'お腹空いた', 'おなかすいた' do |client, data, match|
    s = [
      '＜もう、さっき食べたでしょ！',
      '＜ゴロゴロー。:zap:',
      'っ高速修復材 :bath:',
      'っボーキサイト:large_orange_diamond:',
      '＜お魚なんてどうかしら！ :fish:',
      '＜揚げたてのカツよ～ :pig:',
      '＜たまにはお寿司なんてどうかしら？ :sushi:',
      '＜おなかが空いたなら、お肉を食べればいいじゃない！ :meat_on_bone:',
      '＜金曜日はカレーを食べるといいと思うわ！ :curry:',
      '＜中華始めました。:fish_cake:',
    ]
    client.say(text: s.sample, channel: data.channel)
  end
  command_ex '私は (?<name>.*) です.*' do |client, data, match|
    p match
    c = Commander.create!(username: data.user, name: match[:name])
    client.say(text: "<@#{c.username}> は #{c.name} さんね！覚えたわ。", channel: data.channel)
  end
  command '呼んで', 'よんで'  do |client, data, match|
    c = Commander.find_by_username(data.user)
    unless c
      client.say(text: "<@#{data.user}>さんは知らないわ…", channel: data.channel)
    else
      client.say(text: "#{c.name} さん～♪", channel: data.channel)
    end
  end
  command_ex "(?<A>.*) は (?<B>.*).*" do |client, data, match|
    c = Commander.create!(username: match[:A], name: match[:B])
    client.say(text: "#{c.username} は #{c.name} ね！覚えたわ。", channel: data.channel)
  end
  command_ex "(?<A>.*)" do |client, data, match|
    c = Commander.find_by_username(match[:A])
    if c
      client.say(text: "#{c.username} は #{c.name} だよ～～。", channel: data.channel)
    else
      client.say(text: "<@#{data.user}>: #{match[:A]} ってなんですか～？", channel: data.channel)
    end
  end
end

Ikaduti.run
