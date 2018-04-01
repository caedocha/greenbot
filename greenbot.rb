require 'slack-ruby-bot'

class GreenBot < SlackRubyBot::Bot

  command 'hello' do |client, data, match|
    client.say(text: 'culo', channel: data.channel)
  end

  command 'how?' do |client, data, match|
  end

  command 'list' do |client, data, match|
  end

end


GreenBot.run
