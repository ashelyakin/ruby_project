# coding: UTF-8
require 'telegram/bot'

TOKEN = '750280419:AAEOWBWbVxWh-CTIU0l5TCo9aXG_bgXvnYw'

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', '/start start '
      bot.api.send_message(
          chat_id: message.chat.id,
          text: "Здравствуй, #{message.from.first_name}")
    else
      bot.api.send_message(
          chat_id: message.chat.id,
          text: 'Это бесполезный бот. Ничего другого он не ответит)')
    end
  end
end

