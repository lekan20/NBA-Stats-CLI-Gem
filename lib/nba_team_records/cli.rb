class NbaTeamRecords::CLI

  def call
    list_teams
    stats
    goodbye
  end

  def list_teams
    # get list of nba teams
    puts "NBA Team Stats:"
    puts <<~HEREDOC
    1. Golden State Warriors
    2. Houston Rockets
    3. Boston Celtics
    4. Toronto Raptors
    5. San Antonio Spurs
    HEREDOC
  end

  def stats
    input = nil
    while input != "exit"
      puts "Enter the number of the team you want the stats of, type list to see the team list, or write exit to exit:"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Team 1 stats"
      when "2"
        puts "Team 2 stats"
      when "list"
        list_teams
      end
    end
  end

  def goodbye
    puts "Start me up again the next time you want to know your team's stats!!!!"
  end

end
