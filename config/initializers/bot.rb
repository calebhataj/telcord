require 'discordrb'
require 'telegram/bot'


bot = Discordrb::Bot.new token: ''

bot.message(channel: '1057105582169014364') do |event|
  puts event.author.username
  puts event.content
  frank = event.author.username + " sends: " + event.content
  event.respond frank
end


bot.run(true)





token = ''


#​
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    when '/rubyfu'
      bot.api.send_message(chat_id: message.chat.id, text: "Rubyfu, where Ruby goes eveil!")
    end
  end
end