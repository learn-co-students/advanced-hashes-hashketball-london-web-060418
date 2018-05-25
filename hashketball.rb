require 'pry'

# Write your code here!
def game_hash 
  hash = {
    :home =>{
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
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
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
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
      
    }
  }
end

def num_points_scored(name)
  points = 0
  game_hash.each { |location, team_data|
    #binding.pry
    
    team_data[:players].each { |player, data|
      #binding.pry

      if player == name
        #binding.pry

        points = data[:points]
        return points
      end
    }
  }
end

def shoe_size(name)
  game_hash.each { |location, team_data|
    #binding.pry
    
    team_data[:players].each { |player, data|
      #binding.pry

      if player == name
        #binding.pry
        shoe = data[:shoe]
        return shoe
      end
    }
  }
end

def team_colors(teamname)
  game_hash.each { |location, team_data|
    #binding.pry
    
    if team_data[:team_name] == teamname
        return team_data[:colors]
    end
  }
end

def team_names
  names = []
  game_hash.each { |location, team_data|
    #binding.pry
    names.push(team_data[:team_name])
  }
  names
end

def player_numbers(teamname)
  game_hash.each { |location, team_data|
    #binding.pry
    
    if team_data[:team_name] == teamname
      numbers = []
      
      team_data[:players].each { |player, data|
        #binding.pry
        numbers.push(data[:number])
      }
      return numbers
    end
  }
end

def player_stats(name)
  game_hash.each { |location, team_data|
    #binding.pry
    
    team_data[:players].each { |player, data|
      #binding.pry

      if player == name
        #binding.pry
        return data
      end
    }
  }
end


def big_shoe_rebounds
  game_hash.each { |location, team_data|
    #binding.pry
    
    biggest_shoe = 0
    rebounds = 0
    
    team_data[:players].each { |player, data|
      #binding.pry
      if data[:shoe] > biggest_shoe
        biggest_shoe = data[:shoe]
        rebounds = data[:rebounds]
      end
    }
    return rebounds
  }
end









