class NbaTeamRecords::Team

  def self.all
    # returns all the teams
    puts "NBA Team Stats:"
    puts <<~HEREDOC
    1. Golden State Warriors
    2. Houston Rockets
    3. Boston Celtics
    4. Toronto Raptors
    5. San Antonio Spurs
    HEREDOC
  end

end
