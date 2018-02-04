class NbaTeamRecords::CLI

  def call
    list_teams
    stats
    goodbye
  end

  def list_teams
    # get list of nba teams
    @team = NbaTeamRecords::Team.all
    @team.each.with_index(1) { |team, i| puts "#{i}. #{team.name}" }
  end

  def stats
    input = nil
    while input != "exit"
      puts "Enter the number of the team you want the stats of, type list to see the team list, or write exit to exit:"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @team[input.to_i-1]
      elsif input == "list"
        list_deals
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "Start me up again the next time you want to know your team's stats!!!!"
  end

end
