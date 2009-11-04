::::::::::::::::::::::::::::::::::::::
::GeekShed Channel Management Script::
::Concept by Zetacon                ::
::Input/Modifications by Phil       ::
::All Rights Reserved               ::
::::::::::::::::::::::::::::::::::::::

;---------------------------Variables---------------------------

on 1:START:{
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

  set %gs.h.commands a list of GeekShed commands can be found at: http://www.geekshed.net/commands
  set %gs.h.getchat get a chat for your website by visiting http://geekshed.net/getchat
  set %gs.h.news read the latest GeekShed News! http://www.geekshed.net/news/
  set %gs.h.help this channel is for IRC related help only. If you need help with your computer, please visit #Geekstogo, #bleepingcomputer, or #chris.
  set %gs.h.limits view a list of all of our limitations at http://www.geekshed.net/2009/10/what-are-the-limits-on-geekshed
  set %gs.h.regchan registering a channel on GeekShed is easy! Please see the following link to learn how: http://www.geekshed.net/2009/10/how-to-register-a-channel-on-geekshed/
  set %gs.h.extendbans to learn how to use extended ban types, please see the following tutorial: http://www.geekshed.net/2009/11/extended-bans-tutorial/
  set %gs.h.ask please ask your question so we may try and help you.
  set %gs.h.helpguidelines please read the #Help Guidelines: http://www.geekshed.net/2009/11/guidelines-for-help-channel/
  set %gs.h.founders to learn how to set more than one channel founder by visiting: http://www.geekshed.net/2009/11/can-my-geekshed-channel-have-more-than-one-founder/
  set %gs.h.sslcertficate learn about our certificate authority through this link: http://www.geekshed.net/2009/10/geekshed-certificate-authority/
  set %gs.h.userbadge visit our User Count Badge generator: http://www.geekshed.net/2009/10/user-count-badges/ 
}

;---------------------------Aliases---------------------------

alias kb {
  if ($1 ison $chan) { 
    mode $chan +b $address($1,2)
    kick $chan $1
  }
}


;---------------------------Menu---------------------------

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
  ..Commands List:/say $$1 $+ , %gs.h.commands
  ..Flash Client:/say $$1 $+ , %gs.h.getchat
  ..Latest News:/say $$1 $+ , %gs.h.news
  ..Computer Help:/say $$1 $+ , %gs.h.help
  ..Ask Question:/say $$1 $+ , set %gs.h.ask
  ..Limitations:/say $$1 $+ , %gs.h.limits
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
}