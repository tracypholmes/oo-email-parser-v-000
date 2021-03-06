# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split.collect {|email| email.split(",") }.flatten.uniq # can I do this with regex?! I probably can. Ugh. 
  end
end
