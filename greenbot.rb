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

SlackRubyBot.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end

GreenBot.run
