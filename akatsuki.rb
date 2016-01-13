require 'slack-ruby-bot'

class Akatsuki < SlackRubyBot::Bot
  command 'おはよう' do |client, data, match|
    s = [
      '本日はお日柄もよく、なのです',
      '司令官、ごきげんようです',
      '暁の出番ね、見てなさい！'
    ]
    client.say(text: s.sample, channel: data.channel)
  end
  command 'おやすみ' do |client, data, match|
    s = [
      'と、当然よ！',
      'ありがと。お礼はちゃんと言えるし。'
    ]
    client.say(text: s.sample, channel: data.channel)
  end
  command 'レディ' do |client, data, match|
    s = [
      '一人前のレディーとして扱ってよね！',
      'ありがと。お礼はちゃんと言えるし。'
    ]
    client.say(text: s.sample, channel: data.channel)
  end
end

Akatsuki.run
