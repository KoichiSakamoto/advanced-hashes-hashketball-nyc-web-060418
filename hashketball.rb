# Write your code here!
require 'pry'

def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => { "Alan Anderson" => {:number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1},
                    "Reggie Evans" => {:number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7},
                    "Brook Lopez" => {:number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15},
                    "Mason Plumlee" => {:number => 1, :shoe => 19, :points => 26, :rebounds => 12, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5},
                    "Jason Terry" => {:number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1}
                    }
    },

    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => { "Jeff Adrien" => {:number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2},
                    "Bismak Biyombo" => {:number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 7, :blocks => 15, :slam_dunks => 10},
                    "DeSagna Diop" => {:number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5},
                    "Ben Gordon" => {:number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0},
                    "Brendan Haywood" => {:number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 22, :blocks => 5, :slam_dunks => 12}
                    }
    }
  }

  hash
end

def num_points_scored(player_name)
  game_hash[:home][:players].each do |player|
    if player[0] == player_name
      return player[1][:points]
    end
  end
  game_hash[:away][:players].each do |player|
    if player[0] == player_name
      return player[1][:points]
    end
  end
end

def shoe_size(player_name)
  game_hash[:home][:players].each do |player|
    if player[0] == player_name
      return player[1][:shoe]
    end
  end
  game_hash[:away][:players].each do |player|
    if player[0] == player_name
      return player[1][:shoe]
    end
  end
end

def team_colors(team_name_arg)
  game_hash.each do |away_home|
    if away_home[1][:team_name] == team_name_arg
      return away_home[1][:colors]
    end
  end
end

def team_names
  return_array = []
  game_hash.each do |away_home|
    return_array.push(away_home[1][:team_name])
  end
  return_array
end

def player_numbers(team_name_arg)
  return_array = []
  game_hash.each do |away_home|
    if away_home[1][:team_name] == team_name_arg
      away_home[1][:players].each do |player|
        return_array.push(player[1][:number])
      end
    end
  end
  return_array
end

def player_stats(player_name_arg)
  game_hash[:home][:players].each do |player|
    if player[0] == player_name_arg
      return player[1]
    end
  end
  game_hash[:away][:players].each do |player|
    if player[0] == player_name_arg
      return player[1]
    end
  end
end

def big_shoe_rebounds
  biggest_shoe_player = ""
  biggest_shoe_size = 0
  game_hash[:home][:players].each do |player|
    if player[1][:shoe] > biggest_shoe_size
      biggest_shoe_player = player[0]
      biggest_shoe_size = player[1][:shoe]
    end
  end
  game_hash[:away][:players].each do |player|
    if player[1][:shoe] > biggest_shoe_size
      biggest_shoe_player = player[0]
      biggest_shoe_size = player[1][:shoe]
    end
  end
  game_hash[:home][:players].each do |player|
    if player[0] == biggest_shoe_player
      return player[1][:rebounds]
    end
  end
  game_hash[:away][:players].each do |player|
    if player[0] == biggest_shoe_player
      return player[1][:rebounds]
    end
  end
end
