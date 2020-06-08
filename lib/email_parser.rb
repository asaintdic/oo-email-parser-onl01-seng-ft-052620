class EmailAddressParser
  attr_accessor :name, :cvs_data
  
  
  
  def initialize(cvs_data)
    @cvs_data = cvs_data
  end 

  def parse
   csv_data.split.collect do |eaddress|
     eaddress.split(',')
   end
   .flatten.uniq
 end
end



# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
