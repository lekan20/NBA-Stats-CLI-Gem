class NbaTeamRecords::CLI

  def call
    puts "NBA Team Stats:"
    list_teams
  end

  def list_teams
    # get list of nba teams
    puts <<~HEREDOC
    1. Golden State Warriors
    2. Houston Rockets
    3. Boston Celtics
    4. Toronto Raptors
    5. San Antonio Spurs
    HEREDOC
  end

end
