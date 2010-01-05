::::::::::::::::::::::::::::::::::::::
::GeekShed Channel Management Script::
::Concept by Zetacon                ::
::Input/Modifications by Phil       ::
::All Rights Reserved               ::
::::::::::::::::::::::::::::::::::::::

;---------------------------Variables---------------------------

on *:JOIN:#:{
  set %gs.w.attitude Your attitude is not conducive to the desired environment.
  set %gs.w.hatespeech Hate Speech is not tolerated on GeekShed.
  set %gs.w.harassment Harassing Users is prohibited on GeekShed.
  set %gs.w.botnet Botnetting is strictly prohibited on GeekShed.
  set %gs.w.msgsnoperm You may not PM/DCC/Notice/Query/CTCP users without their expressed permission.
  set %gs.w.malware You may not spam your Virus/Trojan horse.
  set %gs.w.hack Hacking/Cracking/Piracy is not permitted.
  set %gs.w.language Please watch your language. We want everyone to feel welcome here.
  set %gs.w.flood Haven't you heard? Flooding is lame as any idiot can do it!
  set %gs.w.amsg Amsg/Ame's are not tolerated here.
  set %gs.w.spam Spamming is not tolerated here.
  set %gs.w.privacy Copyright & Privacy infringement are strictly prohibited.
  set %gs.w.oswars Operating system (OS) wars are not tolerated here.
  set %gs.w.caps Talking in caps is considered yelling, annoying, and rude. Please turn them off. Thanks.
  set %gs.w.persattack Personal attacks are not tolerated here.
  set %gs.w.banevade Ban evasion is considered a serious infraction and only results in a longer ban!
  set %gs.w.nick Please change your nick.
  set %gs.w.illegal Illegal activities are not discussed here.

  set %gs.hn.commands a list of GeekShed commands can be found at: http://www.geekshed.net/commands
  set %gs.hn.getchat get a chat for your website by visiting http://geekshed.net/getchat
  set %gs.hn.news read the latest GeekShed News! http://www.geekshed.net/news/
  set %gs.hn.help this channel is for IRC related help only. If you need help with your computer, please visit #Geekstogo, #bleepingcomputer, or #chris.
  set %gs.hn.limits view a list of all of our limitations at http://www.geekshed.net/2009/10/what-are-the-limits-on-geekshed
  set %gs.hn.regchan registering a channel on GeekShed is easy! Please see the following link to learn how: http://www.geekshed.net/2009/10/how-to-register-a-channel-on-geekshed/
  set %gs.hn.regnick to register your nick, type: /ns register password email. Replace "password" with a unique password and "email" with a valid e-mail address.
  set %gs.hn.extendbans to learn how to use extended ban types, please see the following tutorial: http://www.geekshed.net/2009/11/extended-bans-tutorial/
  set %gs.hn.ask please ask your question so we may try and help you.
  set %gs.hn.helpguidelines please read the #Help Guidelines: http://www.geekshed.net/2009/11/guidelines-for-help-channel/
  set %gs.hn.founders to learn how to set more than one channel founder by visiting: http://www.geekshed.net/2009/11/can-my-geekshed-channel-have-more-than-one-founder/
  set %gs.hn.sslcertficate learn about our certificate authority through this link: http://www.geekshed.net/2009/10/geekshed-certificate-authority/
  set %gs.hn.userbadge visit our User Count Badge generator: http://www.geekshed.net/2009/10/user-count-badges/
  set %gs.hn.tos please read the GeekShed Terms of Service: http://www.geekshed.net/tos/ 

  set %gs.h.commands A list of GeekShed commands can be found at: http://www.geekshed.net/commands
  set %gs.h.getchat Get a chat for your website by visiting http://geekshed.net/getchat
  set %gs.h.news Read the latest GeekShed News! http://www.geekshed.net/news/
  set %gs.h.help This channel is for IRC related help only. If you need help with your computer, please visit #Geekstogo, #bleepingcomputer, or #chris.
  set %gs.h.limits View a list of all of our limitations at http://www.geekshed.net/2009/10/what-are-the-limits-on-geekshed
  set %gs.h.regchan Registering a channel on GeekShed is easy! Please see the following link to learn how: http://www.geekshed.net/2009/10/how-to-register-a-channel-on-geekshed/
  set %gs.h.regnick To register your nick, type: /ns register password email. Replace "password" with a unique password and "email" with a valid e-mail address.
  set %gs.h.extendbans To learn how to use extended ban types, please see the following tutorial: http://www.geekshed.net/2009/11/extended-bans-tutorial/
  set %gs.h.ask Please ask your question so we may try and help you.
  set %gs.h.helpguidelines Please read the #Help Guidelines: http://www.geekshed.net/2009/11/guidelines-for-help-channel/
  set %gs.h.founders To learn how to set more than one channel founder by visiting: http://www.geekshed.net/2009/11/can-my-geekshed-channel-have-more-than-one-founder/
  set %gs.h.sslcertficate Learn about our certificate authority through this link: http://www.geekshed.net/2009/10/geekshed-certificate-authority/
  set %gs.h.userbadge Visit our User Count Badge generator: http://www.geekshed.net/2009/10/user-count-badges/
  set %gs.h.tos Please read the GeekShed Terms of Service: http://www.geekshed.net/tos/
}

;---------------------------Aliases---------------------------

alias kb {
  if ($1 ison $chan) { 
    mode $chan +b $address($1,2)
    kick $chan $1 $2-
  }
}

alias founder {
  cs SET $chan XOP OFF
  cs ACCESS $chan ADD $1 9999
  cs SET $chan XOP ON
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
  Channel Management Menu
  .Discipline
  ..Warn
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
  ..Ask Question:/say $$1 $+ , %gs.hn.ask
  ..Certificate Authority:/say $$1 $+ , %gs.hn.sslcertficate
  ..Channel Registration: /say $$1 $+ , %gs.hn.regchan
  ..Commands List:/say $$1 $+ , %gs.hn.commands
  ..Computer Help:/say $$1 $+ , %gs.hn.help
  ..Extended Bans:/say $$1 $+ , %gs.hn.extendbans
  ..Flash Client:/say $$1 $+ , %gs.hn.getchat
  ..Founders:/say $$1 $+ , %gs.hn.founders
  ..Help Guidelines:/say $$1 , %gs.hn.helpguidelines
  ..Latest News:/say $$1 $+ , %gs.hn.news
  ..Limitations:/say $$1 $+ , %gs.hn.limits
  ..Nick Registration:/say $$1 $+ , %gs.hn.regnick
  ..Terms of Service:/say $$1 $+ , %gs.hn.tos
  ..User Badge:/say $$1 $+ , %gs.hn.userbadge
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
  -
  Channel Management Menu
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
  ..Ask Question:/say %gs.h.ask
  ..Certificate Authority:/say %gs.h.sslcertficate
  ..Channel Registration: /say %gs.h.regchan
  ..Commands List:/say %gs.h.commands
  ..Computer Help:/say %gs.h.help
  ..Extended Bans:/say %gs.h.extendbans
  ..Flash Client:/say %gs.h.getchat
  ..Founders:/say %gs.h.founders
  ..Help Guidelines:/say %gs.h.helpguidelines
  ..Latest News:/say %gs.h.news
  ..Limitations:/say %gs.h.limits
  ..Terms of Service:/say %gs.h.tos
  ..User Badge:/say %gs.h.userbadge
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
  ..Modes
  ...Moderate
  ....On:/mode $chan +m
  ....Off:/mode $chan -m
  ...Invite-Only
  ....On:/mode $chan +i
  ....Off:/mode $chan -i
  ...ANSI Color Block
  ....On:/mode $chan +c
  ....Off:/mode $chan -c
  ...CTCP Blocker
  ....On:/mode $chan +C
  ....Off:/mode $chan -C
  ...Nick change blocker
  ....On:/mode $chan +N
  ....Off:/mode $chan -N
  ...Foul Language Filter
  ....On:/mode $chan +G
  ....Off:/mode $chan -G
  ...Secret Channel
  ....On:/mode $chan +s
  ....Off:/mode $chan -s
  ...Set Topic (Op Only)
  ....On:/mode $chan +t
  ....Off:/mode $chan -t
  ...Color Stripper
  ....On:/mode $chan +S
  ....Off:/mode $chan -S
  ...No Outside Messages
  ....On:/mode $chan +n
  ....Off:/mode $chan -n
  ...No Notices
  ....On:/mode $chan +T
  ....Off:/mode $chan -T
  ...Private Channel
  ....On:/mode $chan +p
  ....Off:/mode $chan -p
  ...Strip Formatting
  ....On:/mode $chan +U
  ....Off:/mode $chan -U
  ...Invite Not Allowed
  ....On:/mode $chan +V
  ....Off:/mode $chan -V
  ...SSL Connection Only
  ....On:/mode $chan +z
  ....Off:/mode $chan -z
  ...Registered Nicks Only
  ....On:/mode $chan +R
  ....Off:/mode $chan -R
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
  .MemoServ
  ..List Memos:/msg MemoServ list
  ..Send
  ...No Read Receipt:/ms SEND nick $$?="Enter the nick you wish to send a Memo" $$?="Enter the message for the Memo"
  ...Read Receipt:/ms RSEND nick $$?="Enter the nick you wish to send a Memo" $$?="Enter the message for the Memo"
  ..Delete
  ..Read
  ..Settings
  ...Info:
  ...Limit:/ms SET LIMIT $$?="Enter the Memo Limit (Maximum of 20)"
  ...Notify
  ....On:
  ....Off:
  ....Logon:
  ....Mail:
  ....NoMail:
  .NickServ
  ..Whois:/whois $$?="Enter the nick you want to whois"
  ..Info:/ns info $$?="Enter the nick you want info"
  ..Change Nick:/nick $$?="Enter your new nick"
  ..Group:/ns group $$?="Enter your main nick" $$?="Enter your password"
}

menu status {
  -
  Channel Management Menu
  .ChanServ
  ..Info:/cs info $$?="Enter the channel you want info (#channel)" all
  .MemoServ
  ..List Memos:/msg MemoServ list
  ..Send
  ...No Read Receipt:/ms SEND nick $$?="Enter the nick you wish to send a Memo" $$?="Enter the message for the Memo"
  ...Read Receipt:/ms RSEND nick $$?="Enter the nick you wish to send a Memo" $$?="Enter the message for the Memo"
  ..Delete
  ..Read
  ..Settings
  ...Info:
  ...Limit:/ms SET LIMIT $$?="Enter the Memo Limit (Maximum of 20)"
  ...Notify
  ....On:
  ....Off:
  ....Logon:
  ....Mail:
  ....NoMail:
  .NickServ
  ..Whois:/whois $$?="Enter the nick you want to whois"
  ..Info:/ns info $$?="Enter the nick you want info"
  ..Change Nick:/nick $$?="Enter your new nick"
  ..Group:/ns group $$?="Enter your main nick" $$?="Enter your password"
}
