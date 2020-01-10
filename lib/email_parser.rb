# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  attr_accessor :emails
  
  def  initialize(emails)
    @emails = emails
  end
  
  def parse
    puts splitEmail = emails.split.collect {|address| address.split(',')} 
    returnArr = splitEmail.flatten.uniq
    returnArr
  end

end

emails1 = "asd@qw.com, per@er.org, Zaza@sugar.net"
parser1 = EmailAddressParser.new(emails1)
parser1.parse 

emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
parser2 = EmailAddressParser.new(emails2)
parser2.parse