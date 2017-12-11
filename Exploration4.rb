#Exploration4.rb
class ClubList
  attr_accessor :nameList

  # Create the object
  def initialize(nameList = [])
    @nameList = nameList
  end    
    
  def initialize(members = 0)
    @members = members
  end

  def count_members
    puts "Enter name to join the club:"  
    STDOUT.flush  
      newMember = gets.chomp
    @members += 1
    nameList.push(newMember)
    puts "Are there any more members to add? (Y or N)"
    STDOUT.flush
    status = gets
    if status.chomp.eql? 'Y'
      count_members
    else
        if nameList.eql? [""]
        puts "There are no members in this club"
      else
        puts "There are #{@members} members in the club"
        puts "The members are:"  
        @nameList.each do |memList|
          puts memList
        end
      end
    end
  end
end

      
if __FILE__ == $0
  cl = ClubList.new
  cl.nameList = []
  cl.count_members
end