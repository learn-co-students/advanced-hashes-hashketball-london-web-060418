# Write your code here!
require "pry"


def game_hash()
  hash = {
    home:{
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    away:{
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    },
  }
  return hash
end

def num_points_scored(player_name)
  game_hash().each do |location_key, team_data_value|
    team_data_value[:players].each do |player, player_data|
      if(player == player_name)
        return player_data[:points].to_i
      end
    end
  end
end

def shoe_size(player_name)
  game_hash().each do |location_key, team_data_value|
    team_data_value[:players].each do |player, player_data|
      if(player == player_name)
        return player_data[:shoe].to_i
      end
    end
  end
  return nil
end

def rebounds(player_name)
  game_hash().each do |location_key, team_data_value|
    team_data_value[:players].each do |player, player_data|
      if(player == player_name)
        return player_data[:rebounds].to_i
      end
    end
  end
  return nil
end

def team_colors(team_name)
  game_hash().each do |location_key, team_data_value|
    if(team_data_value[:team_name] == team_name)
      return team_data_value[:colors]
    end
  end
  return nil
end

def team_names()
  arr = []
  game_hash.keys.each do |key|
    arr << game_hash[key][:team_name]
  end
  return arr
end

def player_numbers(team_name)
  player_points_arr = []
  game_hash().each do |location_key, team_data_value|
    if(team_data_value[:team_name] == team_name) then
      team_data_value[:players].each do |player_name, player_values|
        player_points_arr << player_values[:number]
      end
    end
  end
  return player_points_arr
end

def player_stats(player_name)
  game_hash().each do |location_key, team_data_value|
    team_data_value[:players].each do |player, player_data|
      if(player == player_name)
        return player_data
      end
    end
  end
end

def big_shoe_rebounds()
  biggest_shoe_hash = {name:"", shoe_size: -1}
  game_hash().each do |location_key, team_data_value|
    team_data_value[:players].each do |player, player_data|
      if(player_data[:shoe] > biggest_shoe_hash[:shoe_size])
        biggest_shoe_hash[:name] = player
        biggest_shoe_hash[:shoe_size] = player_data[:shoe]
      end
    end
  end
  return rebounds(biggest_shoe_hash[:name])
end
