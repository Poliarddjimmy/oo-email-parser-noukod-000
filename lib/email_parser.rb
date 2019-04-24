# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 
  attr_accessor :name, :email
  
  def initialize(email)
    @email = email
  end 

  def parse 
    email.split(\w+@\w+\.{1}[a-zA-Z]{2,}).collect do |em|
      em.split(',')
    end
    .flatten.uniq 
  end 
end 

