class NbaTeamRecords::Team
  attr_accessor :name, :wins, :loses, :pct, :gb, :home, :road, :div, :conf, :ppg, :opp, :diff, :streak, :l10

  def self.all
    # returns all the teams
    puts "NBA Team Stats:"
    # puts <<~HEREDOC
    # 1. Golden State Warriors
    # 2. Houston Rockets
    # 3. Boston Celtics
    # 4. Toronto Raptors
    # 5. San Antonio Spurs
    # HEREDOC

    team_1 = self.new
    team_1.name = "Golden State Warriors"
    team_1.wins = "40"
    team_1.loses = "10"
    team_1.pct = ".800"
    team_1.gb = "-"
    team_1.home = "19-6"
    team_1.road = "21-4"
    team_1.div = "5-2"
    team_1.conf = "21-7"
    team_1.ppg = "115.6"
    team_1.opp = "107.2"
    team_1.diff = "+ 8.7"
    team_1.streak = "W3"
    team_1.l10 = "8-2"

    team_2 = self.new
    team_2.name = "Houston Rockets"
    team_2.wins = "38"
    team_2.loses = "13"
    team_2.pct = ".745"
    team_2.gb = "2"
    team_2.home = "20-6"
    team_2.road = "18-7"
    team_2.div = "7-3"
    team_2.conf = "22-8"
    team_2.ppg = "114.0"
    team_2.opp = "105.7"
    team_2.diff = "+ 8.2"
    team_2.streak = "W4"
    team_2.l10 = "8-2"

    [team_1, team_2]
  end

end
