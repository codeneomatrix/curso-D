import vibe.d;
import vibeirc;
class Bot: IRCConnection{
	enum channel = "#nice";
	
	this(){
	nickname = "bot";
	}
	override void signed_on(){
	join_channel(channel);
	}
	override void privmsg(Message message){
	if (message.isCTCP)
		return ;

	logInfo("[%s] <%s> %s", message.receiver, message.sender.nickname, message.message);

	if (message.receiver == nickname)
		send_message(message.sender.nickname, "Thanks for your message");
	else
		send_message(channel, "Thanks for using the channel");
	}
}

Bot bot;

static this()
{
	bot = irc_connect!Bot(ConnectionParameters("localhost", 6667));
}