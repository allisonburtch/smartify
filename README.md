For my Redial: Interactive Telephony class, I’ve attempted to create simple ways to augment adumbphone with smart phone functionality.

I could see this as useful for those who don’t normally have internet access, those who don’t want the internet with them continuously, and especially for those who don’t have the money to pay for a data plan.

To do this, I connected my gmail to an Asterisk server through a ruby app. One would ostensibly be able to call my Asterisk number and listen to Google Text-to-Speech read back my gmail. It is mostly working, I just have to mess with some of the timing errors in Asterisk.

This code assumes you have Asterisk and Ruby gems installed on your server already.

More info here:
http://blog.allisonburtch.net/post/46216716159/how-to-smartify-your-dumbphone
