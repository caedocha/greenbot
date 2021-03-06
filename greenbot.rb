require 'slack-ruby-bot'

class GreenBot < SlackRubyBot::Bot

  def self.getting_started
    File.open('getting_started.txt', 'r').read
  end

  command 'getting started' do |client, data, match|
    client.say(text: getting_started, channel: data.channel)
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
