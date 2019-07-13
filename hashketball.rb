# Write your code here!

require "pry"

def game_hash
  stats = {
    home: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        { player_name: 'Jeff Adrien',
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2 },
        { player_name: 'Bismack Biyombo',
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10 },
        { player_name: 'DeSagna Diop',
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5 },
        { player_name: 'Ben Gordon',
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0 },
        { player_name: 'Kemba Walker',
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12 }
      ]
    },
    away: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        { player_name: 'Alan Anderson',
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1 },
              { player_name: 'Reggie Evans',
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7 },
              { player_name: 'Brook Lopez',
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15 },
              { player_name: 'Mason Plumlee',
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 11,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5 },
              { player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1 }
              ]
            }
          }
  stats
end

def num_points_scored(name)
  hash = game_hash

  hash.each do |a, b|
    b.each do |c, d|
      if c == :players
        d.each do |e,f|
          if e[:player_name] == name
            return e[:points]
          end
        end
      end
    end
  end
end

def shoe_size(name)
  hash = game_hash

  hash.each do |a, b|
    b.each do |c, d|
      if c == :players
        d.each do |e,f|
          if e[:player_name] == name
            return e[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team)
  hash = game_hash

  hash.each do |a, b|
    if b[:team_name] == team
      return b[:colors]
    end
  end
end

def team_names
  hash = game_hash
  response_array = []

  hash.each do |a, b|
      response_array.push(b[:team_name])
  end

  return response_array
end

def player_numbers(team)
  hash = game_hash
  response_array = []

  hash.each do |a, b|
    if b[:team_name] == team
      b.each do |c, d|
        if c == :players
          d.each do |e|
            response_array.push(e[:number])
          end
        end
      end
    end
  end

  return response_array
end

def player_stats(name)
  hash = game_hash

  hash.each do |a, b|
    b.each do |c, d|
      if c == :players
        d.each do |e,f|
          if e[:player_name] == name
            e.delete(:player_name)
            return e
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  hash = game_hash
  big_rebounds = 0

  hash.each do |a, b|
    b.each do |c, d|
      if c == :players
        d.each do |e,f|
          max_shoe = 0
          if e[:shoe] > max_shoe
            max_shoe = e[:shoe]
            big_rebounds = e[:rebounds]
          end
        end
      end
    end
  end
end
