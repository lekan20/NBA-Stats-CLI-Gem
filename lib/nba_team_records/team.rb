class NbaTeamRecords::Team
  attr_accessor :name, :wins, :loses, :pct, :gb, :home, :road, :div, :conf, :ppg, :opp, :diff, :streak, :l10

  def self.all
    self.scrape_teams
  end

  def self.scrape_teams
    # go to espn, find the teams
    # extract the stats
    # instantiate a team
    # return an array of teams
    teams = self.scrape_espn
    teams
  end

  def self.scrape_espn
    doc = Nokogiri::HTML(open("http://espn.com/nba/standings/_/group/league"))
    doc.css('.standings-row').map do |stats|
      team = self.new
      team.name = stats.css('.team-names').first.text
      team.wins = stats.css('td')[1].text
      team.loses = stats.css('td')[2].text
      team.pct = stats.css('td')[3].text
      team.gb = stats.css('td')[4].text
      team.home = stats.css('td')[5].text
      team.road = stats.css('td')[6].text
      team.div = stats.css('td')[7].text
      team.conf = stats.css('td')[8].text
      team.ppg = stats.css('td')[9].text
      team.opp = stats.css('td')[10].text
      team.diff = stats.css('td')[11].text
      team.streak = stats.css('td')[12].text
      team.l10 = stats.css('td')[13].text
      team
    end
  end

end
