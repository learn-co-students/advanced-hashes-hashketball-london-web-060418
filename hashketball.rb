require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end


def num_points_scored(player)
  game_hash.each do |team, data|   #team = #home, away 
    all_stats = data.fetch(:players)  #each player w info
      all_stats.each do |player_name, stats|
        if player == player_name
          stats_array = stats.to_a    #[[:number, 30], [:shoe, 14], [:points, 12], [:rebounds, 12], [:assists, 12], [:steals, 12], [:blocks, 12], [:slam_dunks, 7]]
          return stats_array[2][1]      #2 for points array, 1 for the actual points 
        end
      end 
  end 
end

def shoe_size(player)
  game_hash.each do |team, data|   #team = #home, away 
    all_stats = data.fetch(:players)  #each player w info
      all_stats.each do |player_name, stats|
        if player == player_name
          stats_array = stats.to_a    #[[:number, 30], [:shoe, 14], [:points, 12], [:rebounds, 12], [:assists, 12], [:steals, 12], [:blocks, 12], [:slam_dunks, 7]]
          return stats_array[1][1]      #2 for size array, 1 for the actual shoe_size 
        end
      end 
  end 
end 


def team_colors(team)
  game_hash.each do |teams, data|   #team = #home, away 
    if team == data.values[0]   #if team == :team_name 
      return data.values[1]  #return the value of colors 
    end 
  end 
end

def team_names
  teams_array = []
  game_hash.each do |teams, data|
    teams = data.fetch(:team_name)
    teams_array << teams
  end 
  teams_array
end

def player_numbers(team)
  jersey_numbers = []
    game_hash.each do |teams, data|   #team = #home, away
    if team == data.values[0]   #if team == :team_name 
      data.values[2].each do |player, info|   #iterating thru player info
        jersey_numbers << info.values[0]    #info.values[0] stand for player jersey numbers 
      end 
    end 
  end 
  jersey_numbers
end 

def player_stats(player)
    game_hash.each do |team, data|   #team = #home, away 
    all_stats = data.fetch(:players)  #each player w info
      all_stats.each do |player_name, stats|
        if player == player_name 
          return stats    #all the hash info on the player
        end
      end 
  end 
end 

def big_shoe_rebounds
    shoe_sizes = []
    game_hash.each do |teams, data|   #team = #home, away 
      data.values[2].each do |player, info|   #iterating thru player info
        #SORT BY info.values[1] stand for player shoes size, last is the biggest
        player_w_biggest_shoes = data.values[2].sort_by{|playery, info| info.values[1] }.last
        return player_w_biggest_shoes[1].values[3]   #Array[1] then hash, so values[3] for Rebounds 
    end 
  end 
end 

