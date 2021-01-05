//Bot PG in Dart lang, with API "Nyxx"
//More infoemations and documentations are in each of bellow.
//API Official:
//l7ssha(Szymon Uglis)'s repository,"Nyxx",
//see https://github.com/l7ssha/nyxx.
//User's Quita Ref:
//dennougorilla's article, "ランダムでチーム分けをするDiscord Botを作った😇",
//see https://qiita.com/dennougorilla/items/c1b808d6fb7a37b71476.

import 'package:nyxx/nyxx.dart';

void main() { 
  //bot init with BOT TOKEN, and API "Nyxx" 
  var bot = Nyxx("TOKEN");
 //Working Codes of bot
  bot.onMessageReceived.listen((event) {
    if (event.message.content == "!ping") {
      event.message.channel.send(content: "Pong!");
    }
  });
  //Addition of Commands
  String pref="#"
  Commander(bot, prefix: pref)
    ..registerCommand("ping", (context, message) => context.reply(content: "Pong!"));
}