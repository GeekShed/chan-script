;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GeekShed Management Script                   ;;
;; Version 1.5                                  ;;
;; Concept by Zetacon                           ;;
;; Input/Modifications by Phil, GrimReaper      ;;
;; All Rights Reserved                          ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;---------------------------Version Info CTCP-------------------
ctcp 1:gscsver:ctcpreply $nick gscsver GeekShed.net management script version 1.5

;---------------------------Variables---------------------------

on 1:START:{
  set %gs.w.attitude Your attitude is not conducive to the desired environment.
  set %gs.w.hatespeech Hate Speech is not tolerated on GeekShed.
  set %gs.w.harassment Harassing Users is prohibited on GeekShed.
  set %gs.w.botnet Botnetting is strictly prohibited on GeekShed.
  set %gs.w.msgsnoperm You may not PM/DCC/Notice/Query/CTCP users without their expressed permission.
  set %gs.w.hack Hacking/Cracking/Piracy is not permitted.
  set %gs.w.language Please watch your language. We want everyone to feel welcome here.
  set %gs.w.flood Haven't you heard? Flooding is lame as any idiot can do it!
  set %gs.w.amsg Amsg/Ame's are not tolerated here.
  set %gs.w.spam Spamming is not tolerated here.
  set %gs.w.privacy Copyright & Privacy infringement are strictly prohibited.
  set %gs.w.oswars Operating system (OS) wars are not tolerated here.
  set %gs.w.caps Talking in caps is considered yelling, annoying, and rude. Please turn them off. Thanks.
  set %gs.w.persattack Personal attacks are not tolerated here.
  set %gs.w.nick Please change your nick.
  set %gs.w.illegal Illegal activities are not discussed here.

  set %gs.hn.commands a list of GeekShed commands can be found at: http://www.geekshed.net/commands
  set %gs.hn.getchat get a chat for your website by visiting http://geekshed.net/getchat
  set %gs.hn.news read the latest GeekShed News! http://www.geekshed.net/news/
  set %gs.hn.help this channel is for IRC related help only. If you need help with your computer, please visit #geekstogo, #bleepingcomputer, or #chris.
  set %gs.hn.limits view a list of all of our limitations at http://www.geekshed.net/2009/10/what-are-the-limits-on-geekshed
  set %gs.hn.regchan registering a channel on GeekShed is easy! Please see the following link to learn how: http://www.geekshed.net/2009/10/how-to-register-a-channel-on-geekshed/
  set %gs.hn.regnick for instructions on registering your nick, see: http://www.geekshed.net/2009/11/why-should-i-register-my-nickname-and-how-do-i-do-it/
  set %gs.hn.extendbans to learn how to use extended ban types, please see the following tutorial: http://www.geekshed.net/2009/11/extended-bans-tutorial/
  set %gs.hn.ask please ask your question so we may try and help you.
  set %gs.hn.helpguidelines please read the #Help Guidelines: http://www.geekshed.net/2009/11/guidelines-for-help-channel/
  set %gs.hn.founders to learn how to set more than one channel founder by visiting: http://www.geekshed.net/2009/11/can-my-geekshed-channel-have-more-than-one-founder/
  set %gs.hn.sslcertficate learn about our certificate authority through this link: http://www.geekshed.net/2009/10/geekshed-certificate-authority/
  set %gs.hn.userbadge visit our User Count Badge generator: http://www.geekshed.net/2009/10/user-count-badges/
  set %gs.hn.tos please read the GeekShed Terms of Service: http://www.geekshed.net/tos/
  set %gs.hn.ports to see the ports you can use to connect to GeekShed, see: http://www.geekshed.net/2010/01/what-ports-can-i-use-to-connect-to-geekshed/
  set %gs.hn.owner you can see who owns GeekShed at: http://www.geekshed.net/2009/12/who-owns-geekshed-irc/
  set %gs.hn.clients a list of IRC clients can be found at: http://www.geekshed.net/2009/12/irc-clients/
  set %gs.hn.qdb the GeekShed quote database can be found at: http://www.geekshed.net/qdb/
  set %gs.hn.access a tutorial for using the access system can be found at http://www.geekshed.net/2009/12/access-system-tutorial/
  set %gs.hn.bots for instructions adding a botserv bot to your channel and for a list of bots see: http://www.geekshed.net/2009/11/how-do-i-add-a-botserv-bot-to-my-channel/ and http://www.geekshed.net/2009/11/can-i-make-my-own-botserv-bot/
  set %gs.hn.ipv6 GeekShed does have IPv6 support. See http://www.geekshed.net/2009/11/does-geekshed-have-ipv6-support/ for info
  set %gs.hn.flood for instructions on setting flood protection in your channel see: http://www.geekshed.net/2009/11/channel-flood-protection-tutorial/
  set %gs.hn.oper if you're interested in becoming an IRCOp on GeekShed see: http://www.geekshed.net/2009/11/can-i-be-an-oper-on-geekshed/
  set %gs.hn.link if you want to link a server to GeekShed see http://www.geekshed.net/2009/11/can-i-link-a-server-to-geekshed/ for information
  set %gs.hn.vhost if you would like a GeekShed vhost, join #vhosts and read http://www.geekshed.net/2009/11/can-i-have-a-vhost-on-geekshed/
  set %gs.hn.malwarehelp please read the following instructions for information on removing malware from your computer: http://www.geekstogo.com/forum/Malware-Spyware-Cleaning-Guide-t2852.html
  set %gs.hn.unrealanopeunix see http://www.tutorialnut.com/index.php/2009/01/01/creating-an-unrealircd-and-anope-irc-server-on-a-unix-based-system/ for help setting up UnrealIRCD and Anope on a UNIX based system
  set %gs.hn.unrealanopewin see http://www.tutorialnut.com/index.php/2009/01/02/creating-an-unrealircd-and-anope-irc-server-on-a-windows-system/ for help setting up UnrealIRCD and Anope on a Windows based system
  set %gs.hn.ircclients see http://www.geekshed.net/2009/12/irc-clients/ for a list of the IRC clients you can use to connect to GeekShed with
}

;---------------------------Aliases---------------------------

alias kb {
  if ($1 ison $chan) { 
    mode $chan +b $address($1,2)
    kick $chan $1-
  }
  else {
    echo -a $1 is not on $chan
  }
}

alias founder {
  cs SET $chan XOP OFF
  cs ACCESS $chan ADD $1 9999

  echo -a $1 has been set as founder of $chan $+ . They must now cycle it and rejoin it. XOP has been turned OFF! This means that you must now use the access system. For help doing this, visit http://www.geekshed.net/2009/12/access-system-tutorial/
}

alias permsop {
  cs sop $chan add $1
  mode $chan +ao $1 $1
}

alias permaop {
  cs aop $chan add $1
  mode $chan +o $1
}

alias permhop {
  cs hop $chan add $1
  mode $chan +h $1
}

alias permvop {
  cs vop $chan add $1
  mode $chan +v $1
}

alias tempsop {
  if ($1 ison $chan) {
    mode $chan +ao $1 $1
  }
}




;---------------------------Nicklist Menu---------------------------

menu nicklist {
  -
  GeekShed Management Script
  .Discipline
  ..Warn
  ...Amsg/Ame's:/say $$1 $+ , %gs.w.amsg
  ...Attitude:/say $$1 $+ , %gs.w.attitude
  ...Botnetting:/say $$1 $+ , %gs.w.botnet
  ...Caps:/say $$1 $+ , %gs.w.caps
  ...Change Nick:/say $$1 $+ , %gs.w.nick
  ...Copyright/Privacy:/say $$1 $+ , %gs.w.privacy 
  ...Flooding:/say $$1 $+ , %gs.w.flood
  ...Hacking:/say $$1 $+ , %gs.w.hack
  ...Hate Speech:/say $$1 $+ , %gs.w.hatespeech
  ...Harassment:/say $$1 $+ , %gs.w.harassment
  ...Illegal:/say $$1 $+ , %gs.w.illegal
  ...Language:/say $$1 $+ , %gs.w.language
  ...No PMs:/say $$1 $+ , %gs.w.msgsnoperm
  ...OS Wars:/say $$1 $+ , %gs.w.oswars
  ...Spamming:/say $$1 $+ , %gs.w.spam
  ...Personal Attacks:/say $$1 $+ , %gs.w.persattack
  ..Kick
  ...Kick (No Reason):/kick $chan $$1
  ...Kick (Custom):/kick $chan $$1 $$?="Enter a reason"
  ...Kick (Scripted)
  ....Attitude:/kick $chan $$1 %gs.w.attitude
  ....AMSG/AME:/kick $chan $$1 %gs.w.amsg
  ....Caps:/kick $chan $$1 %gs.w.caps
  ....Flooding:/kick $chan $$1 %gs.w.flood
  ....Hate Speech:/kick $chan $$1 %gs.w.hatespeech
  ....Illegal:/kick $chan $$1 %gs.w.illegal
  ....Change Nick:/kick $chan $$1 %gs.w.nick
  ....Foul Language:/kick $chan $$1 %gs.w.language
  ....No PMs:/kick $chan $$1 %gs.w.msgsnoperm
  ....Personal Attacks:/kick $chan $$1 %gs.w.persattack
  ....Spamming:/kick $chan $$1 %gs.w.spam
  ..Ban:/mode $chan +b $address($$1,2)
  ..Mute:/mode $chan +bb ~q: $+ $address($$1,2) ~n: $+ $address($$1,2)
  ..KickBan
  ...KickBan (No Reason):/kb $$1
  ...KickBan (Custom):/kb $$1 $$?="Enter a reason"
  ...Kickban (Scripted)
  ....Attitude:/kb $$1 %gs.w.attitude
  ....AMSG/AME:/kb $$1 %gs.w.amsg
  ....Caps:/kb $$1 %gs.w.caps
  ....Flooding:/kb $$1 %gs.w.flood
  ....Hate Speech:/kb $$1 %gs.w.hatespeech
  ....Illegal:/kb $$1 %gs.w.illegal
  ....Change Nick:/kb $$1 %gs.w.nick
  ....Foul Language:/kb $$1 %gs.w.language
  ....No PMs:/kb $$1 %gs.w.msgsnoperm
  ....Personal Attacks:/kb $$1 %gs.w.persattack
  ....Spamming:/kb $$1 %gs.w.spam
  .Help
  ..Access System:/say $$1 $+ , %gs.hn.access
  ..Adding BotServ:/say $$1 $+ , %gs.hn.bots
  ..Ask Question:/say $$1 $+ , %gs.hn.ask
  ..Certificate Authority:/say $$1 $+ , %gs.hn.sslcertficate
  ..Channel Registration: /say $$1 $+ , %gs.hn.regchan
  ..Commands List:/say $$1 $+ , %gs.hn.commands
  ..Computer Help:/say $$1 $+ , %gs.hn.help
  ..Extended Bans:/say $$1 $+ , %gs.hn.extendbans
  ..Flash Client:/say $$1 $+ , %gs.hn.getchat
  ..Flood Protection:/say $$1 $+ , %gs.hn.flood
  ..Founders:/say $$1 $+ , %gs.hn.founders
  ..Help Guidelines:/say $$1 $+ , %gs.hn.helpguidelines
  ..IPv6 Support:/say $$1 $+ , %gs.hn.ipv6
  ..IRC Clients:/say $$1 $+ , %gs.hn.ircclients
  ..Latest News:/say $$1 $+ , %gs.hn.news
  ..Limitations:/say $$1 $+ , %gs.hn.limits
  ..Malware Guide:/say $$1 $+ , %gs.hn.malwarehelp
  ..Nick Registration:/say $$1 $+ , %gs.hn.regnick
  ..Oper Info:/say $$1 $+ , %gs.hn.oper
  ..Quote Database:/say $$1 $+ , %gs.hn.qdb
  ..Server Linking:/say $$1 $+ , %gs.hn.link
  ..Terms of Service:/say $$1 $+ , %gs.hn.tos
  ..Unreal/Anope Tutorial Unix:/say $$1 $+ , %gs.hn.unrealanopeunix
  ..Unreal/Anope Tutorial Windows:/say $$1 $+ , %gs.hn.unrealanopewin
  ..User Badge:/say $$1 $+ , %gs.hn.userbadge
  ..vHosts:/say $$1 $+ , %gs.hn.vhost
  .ChanServ
  ..Status
  ...Permanent
  ....QOP:/founder $$1 
  ....SOP:/permsop $$1 
  ....AOP:/permaop $$1 
  ....HOP:/permhop $$1 
  ....VOP:/permvop $$1
  ...Temporary
  ....SOP:/tempsop $$1 
  ....AOP:/mode $chan +o $$1 
  ....HOP:/mode $chan +h $$1 
  ....VOP:/mode $chan +v $$1
  .NickServ
  ..Info:/ns info $$1 all
  ..Whois:/whois $$1
  User Mode $+ $chr(58) $gettok($usermode,1,32)
  ..$iif(D isincs $gettok($usermode,1,32),$style(1)) PM Block:{ if (D isincs $gettok($usermode,1,32)) { umode2 -D } | else { umode2 +D } }
  ..$iif(i isincs $gettok($usermode,1,32),$style(1)) Invisible:{ if (i isincs $gettok($usermode,1,32)) { umode2 -i } | else { umode2 +i } }
  ..$iif(p isincs $gettok($usermode,1,32),$style(1)) Hide Channels:{ if (p isincs $gettok($usermode,1,32)) { umode -p } | else { umode2 +p } }
  ..$iif(w isincs $gettok($usermode,1,32),$style(1)) Wallop Msg Block:{ if (w isincs $gettok($usermode,1,32)) { umode2 -w } | else { umode2 +w } }
  ..$iif(G isincs $gettok($usermode,1,32),$style(1)) Censored Filter:{ if (G isincs $gettok($usermode,1,32)) { umode2 -G } | else { umode2 +G } }
  ..$iif(R isincs $gettok($usermode,1,32),$style(1)) PM/Notices from +r Users:{ if (R isincs $gettok($usermode,1,32)) { umode2 -R } | else { umode2 +R } }
  ..$iif(T isincs $gettok($usermode,1,32),$style(1)) CTCPs Block:{ if (T isincs $gettok($usermode,1,32)) { umode2 -T } | else { umode2 +T } }
}


menu channel {
  -
  GeekShed Management Script
  .Channel Settings
  ..Change Founder:/cs set $$?="Enter channel:" founder $$?="Enter New Founder"
  ..Change Successor:/cs set $$?="Enter channel:" successor $$?="Enter nick:"
  ..Change Password:/cs set $$?="Enter channel:" passwd $$?*="Enter old password:" $$?*="Enter new password:"
  ..Change Description:/cs set $$?="Enter channel:" desc $$?="Enter new description:"
  .Channel Modes $+ $chr(58) $+ $chr(9) $+ $chan(#).mode
  ..$iif(c isincs $gettok($chan(#).mode,1,32),$style(1)) No Colors:{ if (c isincs $gettok($chan(#).mode,1,32)) { mode # -c } | else { mode # +c } }
  ..$iif(i isincs $gettok($chan(#).mode,1,32),$style(1)) Invite Only:{ if (i isincs $gettok($chan(#).mode,1,32)) { mode # -i } | else { mode # +i } }
  ..$iif(M isincs $gettok($chan(#).mode,1,32),$style(1)) Only Registered Nicks Can Speak:{ if (M isincs $gettok($chan(#).mode,1,32)) { mode # -M } | else { mode # +M } }
  ..$iif(m isincs $gettok($chan(#).mode,1,32),$style(1)) Moderated:{ if (m isincs $gettok($chan(#).mode,1,32)) { mode # -m } | else { mode # +m } }
  ..$iif(n isincs $gettok($chan(#).mode,1,32),$style(1)) No External Messages:{ if (n isincs $gettok($chan(#).mode,1,32)) { mode # -n } | else { mode # +n } }
  ..$iif(p isincs $gettok($chan(#).mode,1,32),$style(1)) Private:{ if (p isincs $gettok($chan(#).mode,1,32)) { mode # -p } | else { mode # +p } }
  ..$iif(R isincs $gettok($chan(#).mode,1,32),$style(1)) Registered Nicks Only:{ if (R isincs $gettok($chan(#).mode,1,32)) { mode # -R } | else { mode # +R } }
  ..$iif(s isincs $gettok($chan(#).mode,1,32),$style(1)) Secret:{ if (s isincs $gettok($chan(#).mode,1,32)) { mode # -s } | else { mode # +s } }
  ..$iif(t isincs $gettok($chan(#).mode,1,32),$style(1)) Only Ops Set Topic:{ if (t isincs $gettok($chan(#).mode,1,32)) { mode # -t } | else { mode # +t } }
  ..$iif(l isincs $gettok($chan(#).mode,1,32),$style(1)) User Limit $+ $chr(58) $chan(#).limit,User Limit):{ if (l isincs $gettok($chan(#).mode,1,32)) { mode # -l } | else { mode # +l $$?"Maximum number of users allowed in # $+ :" } }
  ..$iif(k isincs $gettok($chan(#).mode,1,32),$style(1)) Key $+ $chr(58) $chan(#).key,Key):{ if (k isincs $gettok($chan(#).mode,1,32)) { mode # -k $chan(#).key } | else { mode # +k $$?"Enter key for # $+ :" } }
  ..$iif(U isincs $gettok($chan(#).mode,1,32),$style(1)) No Formatting Codes:{ if (V isincs $gettok($chan(#).mode,1,32)) { mode # -U } | else { mode # +U } }
  ..$iif(V isincs $gettok($chan(#).mode,1,32),$style(1)) No Invite:{ if (V isincs $gettok($chan(#).mode,1,32)) { mode # -V } | else { mode # +V } }
  ..$iif(z isincs $gettok($chan(#).mode,1,32),$style(1)) SSL Clients Only:{ if (z isincs $gettok($chan(#).mode,1,32)) { mode # -z } | else { mode # +z } }
  .Discipline
  ..Kick
  ...Kick (No Reason):/kick $chan $$?="Enter the nick you wish to kick"
  ...Kick (Custom):/kick $chan $$?="Enter the nick you wish to kick" $$?="Enter the reason"
  ...Kick (Scripted)
  ....Attitude:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.attitude
  ....AMSG/AME:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.amsg
  ....Caps:/kick $chan $$1 %gs.w.caps
  ....Flooding:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.flood
  ....Hate Speech:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.hatespeech
  ....Illegal:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.illegal
  ....Change Nick:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.nick
  ....Foul Language:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.language
  ....No PMs:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.msgsnoperm
  ....Personal Attacks:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.persattack
  ....Spamming:/kick $chan $$?="Enter the nick you wish to kick" %gs.w.spam
  ..Ban:/mode $chan +b $address($$?="Enter the nick that you wish to ban (Will retrieve the host)",2)
  ..KickBan
  ...KickBan (No Reason):/kb $$?="Enter the nick you wish to kick"
  ...KickBan (Custom):/kb $$?="Enter the nick you wish to kick" $$?="Enter a reason"
  ...Kickban (Scripted)
  ....Attitude:/kb $$?="Enter the nick you wish to kick" %gs.w.attitude
  ....AMSG/AME:/kb $$?="Enter the nick you wish to kick" %gs.w.amsg
  ....Caps:/kb $$?="Enter the nick you wish to kick" %gs.w.caps
  ....Flooding:/kb $$?="Enter the nick you wish to kick" %gs.w.flood
  ....Hate Speech:/kb $$?="Enter the nick you wish to kick" %gs.w.hatespeech
  ....Illegal:/kb $$?="Enter the nick you wish to kick" %gs.w.illegal
  ....Change Nick:/kb $$?="Enter the nick you wish to kick" %gs.w.nick
  ....Foul Language:/kb $$?="Enter the nick you wish to kick" %gs.w.language
  ....No PMs:/kb $$?="Enter the nick you wish to kick" %gs.w.msgsnoperm
  ....Personal Attacks:/kb $$?="Enter the nick you wish to kick" %gs.w.persattack
  ....Spamming:/kb $$?="Enter the nick you wish to kick" %gs.w.spam
  .Help
  ..Access System:/say %gs.hn.access
  ..Adding BotServ:/say %gs.hn.bots
  ..Ask Question:/say %gs.hn.ask
  ..Certificate Authority:/say %gs.hn.sslcertficate
  ..Channel Registration: /say %gs.hn.regchan
  ..Commands List:/say %gs.hn.commands
  ..Computer Help:/say %gs.hn.help
  ..Extended Bans:/say %gs.hn.extendbans
  ..Flash Client:/say %gs.hn.getchat
  ..Flood Protection:/say %gs.hn.flood
  ..Founders:/say %gs.hn.founders
  ..Help Guidelines:/say %gs.hn.helpguidelines
  ..IPv6 Support:/say %gs.hn.ipv6
  ..IRC Clients:/say %gs.hn.ircclients
  ..Latest News:/say %gs.hn.news
  ..Limitations:/say %gs.hn.limits
  ..Malware Guide:/say %gs.hn.malwarehelp
  ..Nick Registration:/say %gs.hn.regnick
  ..Oper Info:/say %gs.hn.oper
  ..Quote Database:/say %gs.hn.qdb
  ..Server Linking:/say %gs.hn.link
  ..Terms of Service:/say %gs.hn.tos
  ..Unreal/Anope Tutorial Unix:/say %gs.hn.unrealanopeunix
  ..Unreal/Anope Tutorial Windows:/say %gs.hn.unrealanopewin
  ..User Badge:/say %gs.hn.userbadge
  ..vHosts:/say %gs.hn.vhost
  .BotServ
  ..Assign:/bs ASSIGN $chan $$?="Enter the desired Services bot"
  ..Unassign:/bs UNASSIGN $chan $$?="Enter the Services bot you wish to unassign"
  ..List:/bs botlist
  ..Say:/bs say $chan $$?="Enter what you wish the Service bot to say"
  ..Act:/bs act $chan $$?="Enter what you wish the Service bot to act"
  .ChanServ
  ..Info:/cs info $$?="Enter the channel you want info (#channel)" all
  ..Join:/join $$?="Enter the channel(s) you wish to join (#chan1,#chan2,#chan3)"
  ..Part:/part $$?="Enter the channel(s) you wish to part (#chan1,#chan2,#chan3)"
  ..Channel Status
  ...Permanent
  ....QOP:/founder $$?="Enter the nick you wish to set as a founder"
  ....SOP:/permsop $$?="Enter the nick you wish to set as admin"
  ....AOP:/permaop $$?="Enter the nick you wish to set as op" 
  ....HOP:/permhop $$?="Enter the nick you wish to set as half-op"
  ....VOP:/permvop $$?="Enter the nick you wish to set as voice"
  ...Temporary
  ....SOP:/tempsop $$?="Enter the nick you wish to set as temporary admin"
  ....AOP:/mode $chan +o $$?="Enter the nick you wish to set as temporary op"
  ....HOP:/mode $chan +h $$?="Enter the nick you wish to set as temporary half-op"
  ....VOP:/mode $chan +v $$?="Enter the nick you wish to set as a temporary voice"
  .HostServ
  ..On:/hs on
  ..Off:/hs off
  ..Group:/hs group
  .MemoServ
  ..List Memos:/ms list
  ..Send
  ...No Read Receipt:/ms SEND $chan $$?="Enter the message for the Memo"
  ...Read Receipt:/ms RSEND $chan $$?="Enter the message for the Memo"
  ..Delete
  ...All:/ms DEL $chan ALL
  ...Last:/ms DEL $chan LAST
  ...Number:/ms DEL $chan $$?="Enter the Memo number to delete (ex: '1','2-5','7-9')"
  ..Read
  ...New:/ms READ $chan NEW
  ...Last:/ms READ $chan LAST
  ...Number:/ms READ $chan $$?="Enter the Memo number to read (ex: '1','2-5','7-9')"
  ..Settings
  ...Info:/ms INFO $chan
  .NickServ
  ..Whois:/whois $$?="Enter the nick you want to whois"
  ..Whois (Idle):/set -u3 %tempwhois $$?="Please enter the nick you want to whois" | .timer 1 1 whois %tempnick %tempnick
  ..Info:/ns info $$?="Enter the nick you want info"
  ..Change Nick:/nick $$?="Enter your new nick"
  ..Group:/ns group $$?="Enter your main nick" $$?="Enter your password"
  User Modes $+ $chr(58) $gettok($usermode,1,32)
  ..$iif(D isincs $gettok($usermode,1,32),$style(1)) PM Block:{ if (D isincs $gettok($usermode,1,32)) { umode2 -D } | else { umode2 +D } }
  ..$iif(i isincs $gettok($usermode,1,32),$style(1)) Invisible:{ if (i isincs $gettok($usermode,1,32)) { umode2 -i } | else { umode2 +i } }
  ..$iif(p isincs $gettok($usermode,1,32),$style(1)) Hide Channels:{ if (p isincs $gettok($usermode,1,32)) { umode -p } | else { umode2 +p } }
  ..$iif(w isincs $gettok($usermode,1,32),$style(1)) Wallop Msg Block:{ if (w isincs $gettok($usermode,1,32)) { umode2 -w } | else { umode2 +w } }
  ..$iif(G isincs $gettok($usermode,1,32),$style(1)) Censored Filter:{ if (G isincs $gettok($usermode,1,32)) { umode2 -G } | else { umode2 +G } }
  ..$iif(R isincs $gettok($usermode,1,32),$style(1)) PM/Notices from +r Users:{ if (R isincs $gettok($usermode,1,32)) { umode2 -R } | else { umode2 +R } }
  ..$iif(T isincs $gettok($usermode,1,32),$style(1)) CTCPs Block:{ if (T isincs $gettok($usermode,1,32)) { umode2 -T } | else { umode2 +T } }
}

menu status {
  -
  GeekShed Management Script
  .User Mode $+ $chr(58) $gettok($usermode,1,32)
  ...$iif(D isincs $gettok($usermode,1,32),$style(1)) PM Block:{ if (D isincs $gettok($usermode,1,32)) { umode2 -D } | else { umode2 +D } }
  ...$iif(i isincs $gettok($usermode,1,32),$style(1)) Invisible:{ if (i isincs $gettok($usermode,1,32)) { umode2 -i } | else { umode2 +i } }
  ...$iif(p isincs $gettok($usermode,1,32),$style(1)) Hide Channels:{ if (p isincs $gettok($usermode,1,32)) { umode -p } | else { umode2 +p } }
  ...$iif(w isincs $gettok($usermode,1,32),$style(1)) Wallop Msg Block:{ if (w isincs $gettok($usermode,1,32)) { umode2 -w } | else { umode2 +w } }
  ...$iif(G isincs $gettok($usermode,1,32),$style(1)) Censored Filter:{ if (G isincs $gettok($usermode,1,32)) { umode2 -G } | else { umode2 +G } }
  ...$iif(R isincs $gettok($usermode,1,32),$style(1)) PM/Notices from +r Users:{ if (R isincs $gettok($usermode,1,32)) { umode2 -R } | else { umode2 +R } }
  ...$iif(T isincs $gettok($usermode,1,32),$style(1)) CTCPs Block:{ if (T isincs $gettok($usermode,1,32)) { umode2 -T } | else { umode2 +T } }
  .MemoServ
  ..List Memos:/ms list
  ..Send
  ...No Read Receipt:/ms SEND $$?="Enter the nick you wish to send a Memo" $$?="Enter the message for the Memo"
  ...Read Receipt:/ms RSEND $$?="Enter the nick you wish to send a Memo" $$?="Enter the message for the Memo"
  ..Delete
  ...All:/ms DEL ALL
  ...Last:/ms DEL LAST
  ...Number:/ms DEL $$?="Enter the Memo number to delete (ex: '1','2-5','7-9')"
  ..Read
  ...New:/ms READ NEW
  ...Last:/ms READ LAST
  ...Number:/ms READ $$?="Enter the Memo number to read (ex: '1','2-5','7-9')"
  ..Settings
  ...Info:/ms INFO
  ...Limit:/ms SET LIMIT $$?="Enter the Memo Limit (Maximum of 20)"
  ...Notify
  ....On:/ms SET NOTIFY ON
  ....Off:/ms SET NOTIFY OFF
  ....New:/ms SET NOTIFY NEW
  ....Logon:/ms SET NOTIFY LOGON
  ....Mail:/ms SET NOTIFY MAIL
  ....NoMail:/ms SET NOTIFY NOMAIL
  .NickServ
  ..Whois:/whois $$?="Enter the nick you want to whois"
  ..Whois (Idle):/set -u3 %whoistemp $$?="Please enter the nick you want to whois" | .timer 1 1 whois %whoistemp %whoistemp
  ..Info:/ns info $$?="Enter the nick you want info"
  ..Change Nick:/nick $$?="Enter your new nick"
  ..Group:/ns group $$?="Enter your main nick" $$?="Enter your password"
}

on *:unload:{  
  echo Removing $script variables, please wait...
  unset %gs.w.*
  unset %gs.hn.*
  echo Variable removal complete
}
