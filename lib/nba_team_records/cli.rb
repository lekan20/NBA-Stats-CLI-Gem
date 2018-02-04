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
      if input.to_i > 0 && input.to_i < 30
        the_team = @team[input.to_i-1]
        puts <<~HEREDOC
        Team: #{the_team.name}
        Wins: #{the_team.wins}
        Loses: #{the_team.loses}
        PCT: #{the_team.pct}
        GB: #{the_team.gb}
        Home:#{the_team.home}
        Road: #{the_team.road}
        Div:#{the_team.div}
        Conf: #{the_team.conf}
        PPG: #{the_team.ppg}
        OPP PPG:#{the_team.opp}
        Diff:#{the_team.diff}
        Streak: #{the_team.streak}
        L10: #{the_team.l10}
        HEREDOC
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
