#!/usr/bin/env ruby
require 'gmail'


##private
username="username@gmail.com" #replace with your username
password="password123" #replace with your password
##


#opens the session, information above should be private
gmail = Gmail.new(username, password)


#get new emails
new_emails = gmail.inbox.emails(:unread)
puts "you have #{new_emails.length} new emails."

#doesn't mark as read
gmail.peek = true 

#make variable for email.from name card

#iterate through emails and print out from, subject, and body of email.
new_emails.each do |email|
        puts "Next message: "
        email_from = email[:from].display_names.first
        puts "From: #{email_from}" 
        email_subject = email.subject
        puts "Subject: #{email_subject}"
        #check to see if the email has multiple content types
        #we're only interested in the plain text (no HTML or attachments)
    
        #either extract the plaintext, decoded text, or nothing if these don't exist
        plain_part = email.multipart? ? (email.text_part ? email.text_part.body.decoded : nil) : email.body.decoded
        # using a regular expression denoting the next email, print what comes before the replies
        puts "Body: #{plain_part.partition(/(On )[^@]+<[^@]+?@.+\..+?>(\s*wrote:)/)[0]}" 
          
   
        end
        

        
  gmail.logout  
