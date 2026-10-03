class OrangeTree
  def initialize
    @feet = 3
    @yearsold = 1
    @orangeCount = 0
  end

  def height
    puts "The tree is " + @feet.to_s + " feet tall!"
  end

  def oneYearPasses
    @yearsold = @yearsold + 1
    @feet = @feet + @yearsold * 2
    
    puts "The tree grows another year."

    if canGrowOranges?
      @orangeCount = @orangeCount + @yearsold * 5
    end

    if tooOld?
      puts 'After living for many years, the tree has died...'
      exit
    end
  end

  def countOranges
    puts "The tree has " + @orangeCount.to_s + " oranges."
  end

  def pickOrange
    if @orangeCount <= 0
      puts "There's no oranges on the tree."
      return
    end
    @orangeCount = @orangeCount - 1
    puts "Hmmm... What a delicious orange!"
  end

  private
  def canGrowOranges?
    @yearsold >= 4
  end

  def tooOld?
    @yearsold >= 25
  end
end

def main
  tree = OrangeTree.new

  puts "You've planted your new tree!"
  
  while true
    puts "What do you want to do? (grow, pick, count, height)"
    command = gets.chomp
    if command == "grow"
      tree.oneYearPasses
    elsif command == "pick"
      tree.pickOrange
    elsif command == "count"
      tree.countOranges
    elsif command == "height"
      tree.height
    else
      puts "Invalid input, try again"
    end
    puts
  end
end

main