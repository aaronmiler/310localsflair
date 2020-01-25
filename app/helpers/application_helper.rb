module ApplicationHelper
  def team_colors
    [
      { primary: '#80000A', secondary: '#A19060', team: 'Atlanta United' },
      { primary: '#000000', secondary: '#00b140', team: 'Austin FC' },
      { primary: '#121F48', secondary: '#B3272D', team: 'Chicago Fire' },
      { primary: '#003087', secondary: '#FE5000', team: 'Cincinnati FC' },
      { primary: '#862633', secondary: '#8BB8E8', team: 'Colorado Rapids' },
      { primary: '#231f20', secondary: '#FEF200', team: 'Columbus Crew SC' },
      { primary: '#ee1a39', secondary: '#231f20', team: 'D.C. United' },
      { primary: '#BF0D3E', secondary: '#00205B', team: 'FC Dallas' },
      { primary: '#F68712', secondary: '#8DC6ED', team: 'Houston Dynamo' },
      { primary: '#231F20', secondary: '#F7B5CD', team: 'Inter Miami CF' },
      { primary: '#00245d', secondary: '#ffd200', team: 'LA Galaxy' },
      { primary: '#000000', secondary: '#C39e6d', team: 'Los Angeles FC' },
      { primary: '#585958', secondary: '#9bcde4', team: 'Minnesota United FC' },
      { primary: '#2B63AD', secondary: '#373536', team: 'Montreal Impact' },
      { primary: '#E51938', secondary: '#002B5C', team: 'New England Revolution' },
      { primary: '#041e42', secondary: '#6CACE4', team: 'New York City FC' },
      { primary: '#002f65', secondary: '#e31351', team: 'New York Red Bulls' },
      { primary: '#61259E', secondary: '#FFE293', team: 'Orlando City SC' },
      { primary: '#002D55', secondary: '#B38707', team: 'Philadelphia Union' },
      { primary: '#004812', secondary: '#EAE827', team: 'Portland Timbers' },
      { primary: '#B30838', secondary: '#013A81', team: 'Real Salt Lake' },
      { primary: '#1f1f1f', secondary: '#30457a', team: 'San Jose Earthquakes' },
      { primary: '#236192', secondary: '#658D1B', team: 'Seattle Sounders FC' },
      { primary: '#002A5C', secondary: '#93B1D7', team: 'Sporting Kansas City' },
      { primary: '#AB1E2D', secondary: '#3f4743', team: 'Toronto FC' },
      { primary: '#04265c', secondary: '#94C2E4', team: 'Vancouver Whitecaps FC' },
    ]
  end

  def colors_for(team)
    team_colors.find { |x| x[:team] == team }
  end
end
