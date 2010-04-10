;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GeekShed Management Script                     ;;
;; Concept by Zetacon                             ;;
;; Input/Modifications by:                        ;;
;; Phil, GrimReaper, Ryan, Freekie                ;;
;; All Rights Reserved                            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; $Id$


;---------------------------Version Info CTCP-------------------
ctcp 1:gscsver:ctcpreply $nick gscsver GeekShed.net management script version 2.0


;---------------------------Variables---------------------------

on 1:START:{
  gs.cs.setvars
}

alias gs.cs.setvars {
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
  set %gs.hn.help if you need help with your computer, please visit #247fixes, #atribune, #geekstogo, #livechat, #ethernet or #bleepingcomputer
  set %gs.hn.limits view a list of all of the GeekShed network limitations at http://www.geekshed.net/2009/10/what-are-the-limits-on-geekshed
  set %gs.hn.regchan registering a channel on GeekShed is easy! Please see the following link to learn how: http://www.geekshed.net/2009/10/how-to-register-a-channel-on-geekshed/
  set %gs.hn.regnick for instructions on registering your nick, see: http://www.geekshed.net/2009/11/why-should-i-register-my-nickname-and-how-do-i-do-it/
  set %gs.hn.extendbans to learn how to use extended ban types, please see the following tutorial: http://www.geekshed.net/2009/11/extended-bans-tutorial/
  set %gs.hn.ask please ask your question so we may try and help you.
  set %gs.hn.helpguidelines please read the #Help Guidelines: http://www.geekshed.net/2009/11/guidelines-for-help-channel/
  set %gs.hn.founders learn how to set more than one channel founder by visiting: http://www.geekshed.net/2009/11/can-my-geekshed-channel-have-more-than-one-founder/
  set %gs.hn.sslcertficate learn about the GeekShed certificate authority through this link: http://www.geekshed.net/2009/10/geekshed-certificate-authority/
  set %gs.hn.userbadge generate user count badges for your site at: http://www.geekshed.net/2009/10/user-count-badges/
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
  set %gs.hn.link if you want to link a server to GeekShed see http://www.geekshed.net/2009/11/can-i-link-a-server-to-geekshed/ for information.
  set %gs.hn.vhost if you would like a GeekShed vhost, please read http://www.geekshed.net/2009/11/can-i-have-a-vhost-on-geekshed/
  set %gs.hn.unrealanopeunix see http://www.tutorialnut.com/index.php/2009/01/01/creating-an-unrealircd-and-anope-irc-server-on-a-unix-based-system/ for help setting up UnrealIRCD and Anope on a UNIX based system.
  set %gs.hn.unrealanopewin see http://www.tutorialnut.com/index.php/2009/01/02/creating-an-unrealircd-and-anope-irc-server-on-a-windows-system/ for help setting up UnrealIRCD and Anope on a Windows based system.
  set %gs.hn.ircclients see http://www.geekshed.net/2009/12/irc-clients/ for a list of the IRC clients you can use to connect to GeekShed.
  set %gs.hn.quitmsgs view a list of quit messages and what they mean by visiting: http://www.geekshed.net/2010/01/quit-messages-and-what-they-mean/
  set %gs.hn.chanscript obtain the latest version of the GeekShed Management Script by visiting: http://www.geekshed.net/2010/01/geekshed-management-script/
  set %gs.hn.chanlist a channel list can be found at: http://www.geekshed.net/chat/chat-rooms/
  set %gs.hn.accounts GeekShed has a policy of absolute transparency. You can view the financial accounts by visiting: http://www.geekshed.net/donate/accounts/
  set %gs.hn.supporters view a list of GeekShed's supporters by visiting: http://www.geekshed.net/donate/supporters/
  set %gs.hn.serverlist to obtain the best connection, you should generally use the server closest to you. A list of servers can be found at http://www.geekshed.net/servers/
  set %gs.hn.ipaddress you cannot see users' IP addresses on GeekShed. For more information, visit: http://www.geekshed.net/2010/02/can-people-on-geekshed-see-my-ip-address/
  set %gs.hn.linkchannels to learn how to link two channels together, please read: http://www.geekshed.net/2010/03/can-i-link-two-channels/
  set %gs.hn.chanmodes a list of channel modes can be found here: http://www.geekshed.net/commands/channel-modes/
  set %gs.hn.groupnick to learn how to group your nicknames and preserve permissions between them visit: http://www.geekshed.net/2010/03/grouping-a-nick-why-and-how/
  set %gs.hn.donate GeekShed depends solely on financial support from users. You can donate to GeekShed at http://www.geekshed.net/donate/
  set %gs.hn.prefixes the signs before people's nicks mean: ~ for owners, & for admins, @ for full operators, % for half operators, + for voiced users.  For more info, see http://www.geekshed.net/2009/10/nick-prefixes-explained/
  set %gs.hn.mircsetup to learn how to setup mIRC to automatically connect to GeekShed with performs, visit: http://www.tutorialnut.com/index.php/2009/01/02/setting-up-mirc-to-auto-perform-geekshed/
  set %gs.hn.whatisssl to find out about SSL and how to use it with GeekShed, visit: http://www.geekshed.net/2010/03/what-is-ssl-what-benefits-does-it-offer-and-how-do-i-use-it/
  set %gs.hn.topicrss to find out about the channel topics RSS feed and using it to put your topic on your website, visit: http://www.geekshed.net/2009/10/topic-rss/
  set %gs.hn.userlist to find out about adding a list of your channel's users to your website, visit: http://www.geekshed.net/2010/04/how-to-add-a-list-of-users-in-your-geekshed-irc-channel-to-your-website/
  set %gs.hn.tflashregister If your are using the new flash client to access Geekshed, You can register your nick from the "Options" menu at the top of the window
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

; Syntax $menuitemgen(<menu name>, <message>, <menu type>, <num>)
alias menuItemGen {
  if ($4 == 1) {
    set %gs.cs.lastMenu $1

    if ($3 == nicklist) {
      return $1 $+ : $+ say $snick($active, 1) $+ , $2
    }
    else {
      return $1 $+ : $+ say $2
    }
  }
}

;---------------------------Menus---------------------------

;--------------------Shared Menus---------------------
menu channel,query,nicklist {
  -
  GeekShed Management Script
  .Help
  ..Channels
  ...$submenu($menuitemgen(Access System, %gs.hn.access, $menu, $1))
  ...$submenu($menuitemgen(Adding BotServ, %gs.hn.bots, $menu, $1))
  ...$submenu($menuitemgen(Channel List, %gs.hn.chanlist, $menu, $1))
  ...$submenu($menuitemgen(Channel Modes, %gs.hn.chanmodes, $menu, $1))
  ...$submenu($menuitemgen(Extended Bans, %gs.hn.extendbans, $menu, $1))
  ...$submenu($menuitemgen(Flood Protection, %gs.hn.flood, $menu, $1))
  ...$submenu($menuitemgen(Multiple Founders, %gs.hn.founders, $menu, $1))
  ...$submenu($menuitemgen(Registration, %gs.hn.regchan, $menu, $1))
  ..IRC Clients
  ...$submenu($menuitemgen(Setting up mIRC, %gs.hn.mircsetup, $menu, $1))
  ...$submenu($menuitemgen(IRC Clients, %gs.hn.ircclients, $menu, $1))
  ..Donations
  ...$submenu($menuitemgen(Accounts, %gs.hn.accounts, $menu, $1))
  ...$submenu($menuitemgen(Donate, %gs.hn.donate, $menu, $1))
  ...$submenu($menuitemgen(Supporters, %gs.hn.supporters, $menu, $1))
  ..General GeekShed
  ...$submenu($menuitemgen(Become IRCOp, %gs.hn.oper, $menu, $1))
  ...$submenu($menuitemgen(Commands List, %gs.hn.commands, $menu, $1))
  ...$submenu($menuitemgen(#help Guidelines, %gs.hn.helpguidelines, $menu, $1))
  ...$submenu($menuitemgen(Management Script, %gs.hn.chanscript, $menu, $1))
  ...$submenu($menuitemgen(Nick Prefixes, %gs.hn.prefixes, $menu, $1))
  ...$submenu($menuitemgen(Quote Database, %gs.hn.qdb, $menu, $1))
  ...$submenu($menuitemgen(Terms of Service, %gs.hn.tos, $menu, $1))
  ...$submenu($menuitemgen(vHosts, %gs.hn.vhost, $menu, $1))
  ...$submenu($menuitemgen(Who Owns GS?, %gs.hn.owner, $menu, $1))
  ..General User Stuff
  ...$submenu($menuitemgen(Ask Question, %gs.hn.ask, $menu, $1))
  ...$submenu($menuitemgen(Computer Help, %gs.hn.help, $menu, $1))
  ...$submenu($menuitemgen(Unreal/Anope Tutorial Unix, %gs.hn.unrealanopeunix, $menu, $1))
  ...$submenu($menuitemgen(Unreal/Anope Tutorial Windows, %gs.hn.unrealanopewin, $menu, $1))
  ..Nicknames
  ...$submenu($menuitemgen(Grouping, %gs.hn.groupnick, $menu, $1))
  ...$submenu($menuitemgen(Quit Messages, %gs.hn.quitmsgs, $menu, $1))
  ...$submenu($menuitemgen(Registration, %gs.hn.regnick, $menu, $1))
  ...$submenu($menuitemgen(TFlash Register, %gs.hn.tflashregister, $menu, $1))
  ..Servers
  ...$submenu($menuitemgen(IPv6 Support, %gs.hn.ipv6, $menu, $1))
  ...$submenu($menuitemgen(Linking to GeekShed, %gs.hn.link, $menu, $1))
  ...$submenu($menuitemgen(Ports, %gs.hn.ports, $menu, $1))
  ...$submenu($menuitemgen(Server List, %gs.hn.serverlist, $menu, $1))
  ...$submenu($menuitemgen(Service Limitations, %gs.hn.limits, $menu, $1))
  ...$submenu($menuitemgen(SSL Certificate Authority, %gs.hn.sslcertficate, $menu, $1))
  ...$submenu($menuitemgen(What is SSL and how do I use it?, %gs.hn.whatisssl, $menu, $1))
  ...$submenu($menuitemgen(Who Can See My IP Address?, , $menu, $1))
  ..Websites
  ...$submenu($menuitemgen(Flash Client, %gs.hn.getchat, $menu, $1))
  ...$submenu($menuitemgen(Topic RSS, %gs.hn.topicrss, $menu, $1))
  ...$submenu($menuitemgen(User List, %gs.hn.userlist, $menu, $1))
  ...$submenu($menuitemgen(Usercount Badge, %gs.hn.userbadge, $menu, $1))
  .Warn
  ..$submenu($menuitemgen(Amsg/Ame's, %gs.w.amsg, $menu, $1))
  ..$submenu($menuitemgen(Attitude, %gs.w.attitude, $menu, $1))
  ..$submenu($menuitemgen(Botnetting, %gs.w.botnet, $menu, $1))
  ..$submenu($menuitemgen(Caps, %gs.w.caps, $menu, $1))
  ..$submenu($menuitemgen(Change Nick, %gs.w.nick, $menu, $1))
  ..$submenu($menuitemgen(Copyright/Privacy, %gs.w.privacy, $menu, $1))
  ..$submenu($menuitemgen(Flooding, %gs.w.flood, $menu, $1))
  ..$submenu($menuitemgen(Hacking, %gs.w.hack, $menu, $1))
  ..$submenu($menuitemgen(Harassment, %gs.w.harassment, $menu, $1))
  ..$submenu($menuitemgen(Hate Speech, %gs.w.hatespeech, $menu, $1))
  ..$submenu($menuitemgen(Illegal, %gs.w.illegal, $menu, $1))
  ..$submenu($menuitemgen(Language, %gs.w.language, $menu, $1))
  ..$submenu($menuitemgen(No PMs, %gs.w.msgsnoperm, $menu, $1))
  ..$submenu($menuitemgen(OS Wars, %gs.w.oswars, $menu, $1))
  ..$submenu($menuitemgen(Personal Attacks, %gs.w.persattack, $menu, $1))
  ..$submenu($menuitemgen(Spamming, %gs.w.spam, $menu, $1))
  -
}

menu status,channel,query,nicklist {
  GeekShed Management Script
  .My User Modes $+ $chr(58) $gettok($usermode,1,32)
  ...$iif(D isincs $gettok($usermode,1,32),$style(1)) PM Block:{ if (D isincs $gettok($usermode,1,32)) { umode2 -D } | else { umode2 +D } }
  ...$iif(i isincs $gettok($usermode,1,32),$style(1)) Invisible:{ if (i isincs $gettok($usermode,1,32)) { umode2 -i } | else { umode2 +i } }
  ...$iif(p isincs $gettok($usermode,1,32),$style(1)) Hide Channels:{ if (p isincs $gettok($usermode,1,32)) { umode -p } | else { umode2 +p } }
  ...$iif(w isincs $gettok($usermode,1,32),$style(1)) Wallop Msg Block:{ if (w isincs $gettok($usermode,1,32)) { umode2 -w } | else { umode2 +w } }
  ...$iif(G isincs $gettok($usermode,1,32),$style(1)) Censored Filter:{ if (G isincs $gettok($usermode,1,32)) { umode2 -G } | else { umode2 +G } }
  ...$iif(R isincs $gettok($usermode,1,32),$style(1)) PM/Notices from +r Users:{ if (R isincs $gettok($usermode,1,32)) { umode2 -R } | else { umode2 +R } }
  ...$iif(T isincs $gettok($usermode,1,32),$style(1)) CTCPs Block:{ if (T isincs $gettok($usermode,1,32)) { umode2 -T } | else { umode2 +T } }
}

;--------------------------Specific Menus----------------------------------

menu nicklist {
  GeekShed Management Script
  .Discipline
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
  ..Kick & Ban
  ...Kick & Ban (No Reason):/kb $$1
  ...Kick & Ban (Custom):/kb $$1 $$?="Enter a reason"
  ...Kick & Ban (Scripted)
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
  ..Timed Kick & Ban
  ...Timed Kick & Ban (No Reason):/kb $$1
  ...Timed Kick & Ban (Custom):/kb $$1 $$?="Enter a reason"
  ...Timed Kick & Ban (Minutes) (Scripted)
  ....Attitude:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.attitude | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....AMSG/AME:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.amsg | .timer 1 $calc(%gstkbtime* 60) mode $chan -b $address($1,2)
  ....Caps:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.caps | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Flooding:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.flood | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Hate Speech:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.hatespeech | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Illegal:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.illegal | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Change Nick:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.nick | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Foul Language:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.language | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....No PMs:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.msgsnoperm | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Personal Attacks:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.persattack | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ....Spamming:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /kb $$1 %gs.w.spam | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address($1,2)
  ...Timed Kick & Ban (Hours) (Scripted)
  ....Attitude:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.attitude | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....AMSG/AME:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.amsg | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Caps:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.caps | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Flooding:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.flood | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Hate Speech:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.hatespeech | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Illegal:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.illegal | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Change Nick:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.nick | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Foul Language:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.language | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....No PMs:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.msgsnoperm | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Personal Attacks:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.persattack | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
  ....Spamming:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /kb $$1 %gs.w.spam | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address($1,2)
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
}

menu channel {
  GeekShed Management Script
  .Channel Settings
  ..Change Founder:/cs set $$?="Enter channel:" founder $$?="Enter New Founder"
  ..Change Successor:/cs set $$?="Enter channel:" successor $$?="Enter nick:"
  ..Change Password:/cs set $$?="Enter channel:" passwd $$?*="Enter old password:" $$?*="Enter new password:"
  ..Change Description:/cs set $$?="Enter channel:" desc $$?="Enter new description:"
  .Channel Modes $+ $chr(58) $+ $chr(9) $+ $chan(#).mode
  ..$iif(c isincs $gettok($chan(#).mode,1,32),$style(1)) No Colors:{ if (c isincs $gettok($chan(#).mode,1,32)) { mode # -c } | else { mode # +c } }
  ..$iif(i isincs $gettok($chan(#).mode,1,32),$style(1)) Invite Only:{ if (i isincs $gettok($chan(#).mode,1,32)) { mode # -i } | else { mode # +i } }
  ..$iif(j isincs $gettok($chan(#).mode,1,32),$style(1)) Throttle Joins:{ if (j isincs $gettok($chan(#).mode,1,32)) { mode # -j } | else { mode # +j $$?="Please enter Total Joins and second's in <join:seconds> format:" } }
  ..$iif(M isincs $gettok($chan(#).mode,1,32),$style(1)) Only Registered Nicks Can Speak:{ if (M isincs $gettok($chan(#).mode,1,32)) { mode # -M } | else { mode # +M } }
  ..$iif(m isincs $gettok($chan(#).mode,1,32),$style(1)) Moderated:{ if (m isincs $gettok($chan(#).mode,1,32)) { mode # -m } | else { mode # +m } }
  ..$iif(n isincs $gettok($chan(#).mode,1,32),$style(1)) No External Messages:{ if (n isincs $gettok($chan(#).mode,1,32)) { mode # -n } | else { mode # +n } }
  ..$iif(p isincs $gettok($chan(#).mode,1,32),$style(1)) Private:{ if (p isincs $gettok($chan(#).mode,1,32)) { mode # -p } | else { mode # +p } }
  ..$iif(R isincs $gettok($chan(#).mode,1,32),$style(1)) Registered Nicks Only:{ if (R isincs $gettok($chan(#).mode,1,32)) { mode # -R } | else { mode # +R } }
  ..$iif(s isincs $gettok($chan(#).mode,1,32),$style(1)) Secret:{ if (s isincs $gettok($chan(#).mode,1,32)) { mode # -s } | else { mode # +s } }
  ..$iif(t isincs $gettok($chan(#).mode,1,32),$style(1)) Only Ops Set Topic:{ if (t isincs $gettok($chan(#).mode,1,32)) { mode # -t } | else { mode # +t } }
  ..$iif(l isincs $gettok($chan(#).mode,1,32),$style(1)) User Limit $+ $chr(58) $iif(!$chan(#).limit,No Limit,$chan(#).limit User Limit):{ if (l isincs $gettok($chan(#).mode,1,32)) { mode # -l } | else { mode # +l $$?"Maximum number of users allowed in # $+ :" } }
  ..$iif(k isincs $gettok($chan(#).mode,1,32),$style(1)) Key $+ $chr(58) $chan(#).key,1,32):{ if (k isincs $gettok($chan(#).mode,1,32)) { mode # -k $chan(#).key } | else { mode # +k $$?"Enter key for # $+ :" } }
  ..$iif(U isincs $gettok($chan(#).mode,1,32),$style(1)) No Formatting Codes:{ if (V isincs $gettok($chan(#).mode,1,32)) { mode # -U } | else { mode # +U } }
  ..$iif(V isincs $gettok($chan(#).mode,1,32),$style(1)) No Invite:{ if (V isincs $gettok($chan(#).mode,1,32)) { mode # -V } | else { mode # +V } }
  ..$iif(z isincs $gettok($chan(#).mode,1,32),$style(1)) SSL Clients Only:{ if (z isincs $gettok($chan(#).mode,1,32)) { mode # -z } | else { mode # +z } }
  ..$iif(C isincs $gettok($chan(#).mode,1,32),$style(1)) No CTCP's:{ if (C isincs $gettok($chan(#).mode,1,32)) { mode # -C } | else { mode # +C } }
  ..$iif(G isincs $gettok($chan(#).mode,1,32),$style(1)) Bad Word Filter:{ if (G isincs $gettok($chan(#).mode,1,32)) { mode # -G } | else { mode # +G } }
  ..$iif(K isincs $gettok($chan(#).mode,1,32),$style(1)) No Knocks $chr(40) $+ +i must be set first $+ $chr(41):{ if (K isincs $gettok($chan(#).mode,1,32)) { mode # -K } | else { mode # +K } }
  ..$iif(L isincs $gettok($chan(#).mode,1,32),$style(1)) Channel Link $chr(40) $+ if +l is full $+ $chr(41):{ if (L isincs $gettok($chan(#).mode,1,32)) { mode # -L } | else { mode # +L $$?="Enter a link channel: (e.g. #TheShed)" } }
  ..$iif(N isincs $gettok($chan(#).mode,1,32),$style(1)) No Nickname Changes:{ if (N isincs $gettok($chan(#).mode,1,32)) { mode # -N } | else { mode # +N } }
  ..$iif(Q isincs $gettok($chan(#).mode,1,32),$style(1)) No Kicks Allowed:{ if (Q isincs $gettok($chan(#).mode,1,32)) { mode # -Q } | else { mode # +Q } }
  ..$iif(S isincs $gettok($chan(#).mode,1,32),$style(1)) Strip mIRC Colors:{ if (S isincs $gettok($chan(#).mode,1,32)) { mode # -S } | else { mode # +S } }
  ..$iif(T isincs $gettok($chan(#).mode,1,32),$style(1)) No Notices In The Channel:{ if (T isincs $gettok($chan(#).mode,1,32)) { mode # -T } | else { mode # +T } }
  ..$iif(V isincs $gettok($chan(#).mode,1,32),$style(1)) No Invites In The channel:{ if (V isincs $gettok($chan(#).mode,1,32)) { mode # -V } | else { mode # +V } }
  ..$iif(u isincs $gettok($chan(#).mode,1,32),$style(1)) Auditorium Mode:{ if (u isincs $gettok($chan(#).mode,1,32)) { mode # -u } | else { mode # +u } }
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
  ..Kick & Ban
  ...Kick & Ban (No Reason):/kb $$?="Enter the nick you wish to kick"
  ...Kick & Ban (Custom):/kb $$?="Enter the nick you wish to kick" $$?="Enter a reason"
  ...Kick & Ban (Scripted)
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
  ..Timed Kick & Ban
  ...Timed Kick & Ban (No Reason):/kb $$1
  ...Timed Kick & Ban (Custom):/kb $$1 $$?="Enter a reason"
  ...Timed Kick & Ban (Minutes) (Scripted)
  ....Attitude:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.attitude | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....AMSG/AME:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.amsg | .timer 1 $calc(%gstkbtime* 60) mode $chan -b $address(%gstkbnick,2)
  ....Caps:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.caps | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Flooding:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.flood | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Hate Speech:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.hatespeech | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Illegal:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.illegal | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Change Nick:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.nick | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Foul Language:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.language | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....No PMs:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.msgsnoperm | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Personal Attacks:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.persattack | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ....Spamming:/set %gstkbtime $$?="Please Enter A Ban Time (In Minutes):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.spam | .timer 1 $calc(%gstkbtime * 60) mode $chan -b $address(%gstkbnick,2)
  ...Timed Kick & Ban (Hours) (Scripted)
  ....Attitude:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.attitude | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....AMSG/AME:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.amsg | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Caps:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.caps | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Flooding:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.flood | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Hate Speech:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.hatespeech | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Illegal:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.illegal | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Change Nick:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.nick | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Foul Language:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.language | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....No PMs:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.msgsnoperm | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Personal Attacks:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.persattack | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
  ....Spamming:/set %gstkbtime $$?="Please Enter A Ban Time (In Hours):" | /set %gstkbnick $$?="Enter the nick you wish to kick" | /kb %gstkbnick %gs.w.spam | .timer 1 $calc(%gstkbtime * 3600) mode $chan -b $address(%gstkbnick,2)
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
  ..Set
  ...Private
  ....On:/cs set $chan PRIVATE on
  ....Off:/cs set $chan PRIVATE off
  ...Restricted
  ....On:/cs set $chan RESTRICTED on
  ....Off:/cs set $chan RESTRICTED off
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
  ..Auto-Join
  ...Add:/ns AJOIN add $chan
  ...Del:/ns AJOIN del $chan
  ...List:/ns AJOIN list
  ...Clear Auto-Join:/ns AJOIN clear
  ..Whois:/whois $$?="Enter the nick you want to whois"
  ..Whois (Idle):/set -u3 %tempwhois $$?="Please enter the nick you want to whois" | .timer 1 1 whois %tempnick %tempnick
  ..Info:/ns info $$?="Enter the nick you want info"
  ..Change Nick:/nick $$?="Enter your new nick"
  ..Group:/ns group $$?="Enter your main nick" $$?="Enter your password"
}

menu status {
  GeekShed Management Script
  .ChanServ
  ..Unban:/cs unban $$?="Enter the channel (You must have op status in channel for this to work)"
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
  ..Auto-Join
  ...Add:/ns AJOIN add $$?="Enter a channel to add (#channel)"
  ...Del:/ns AJOIN del $$?="Enter a channel to delete (#channel)"
  ...List:/ns AJOIN list
  ...Clear Auto-Join:/ns AJOIN clear
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
