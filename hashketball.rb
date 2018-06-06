
# Write your code here!
def game_hash
 
 masterhash={
  
  home:{
   team_name:"Brooklyn Nets" ,
   colors:["Black","White"],
   players:
   {"Alan Anderson"=>
    {number:0,
    shoe: 16,
    points:22,
    rebounds:12,
    assists:12,
    steals:3,
    blocks:1,
    slam_dunks:1},
   "Reggie Evans"=>{
    number:30,
    shoe: 14,
    points:12,
    rebounds:12,
    assists:12,
    steals:12,
    blocks:12,
    slam_dunks:7},
   "Brook Lopez"=> {
    number:11,
   shoe: 17,
   points:17,
   rebounds:19,
   assists:10,
   steals:3,
   blocks:1,
   slam_dunks:15},
  "Mason Plumlee"=>
   {number:1,
   shoe: 19,
   points:26,
   rebounds:12,
   assists:6,
   steals:3,
   blocks:8,
   slam_dunks:5},
   "Jason Terry"=>
   {number:31,
   shoe: 15,
   points:19,
   rebounds:2,
   assists:2,
   steals:4,
   blocks:11,
   slam_dunks:1}
 }
   
  },
  away:{
   team_name:"Charlotte Hornets",
   colors:["Turquoise", "Purple"],
   players:{
    "Jeff Adrien"=>
     {number:4,
     shoe: 18,
     points:10,
     rebounds:1,
     assists:1,
     steals:2,
     blocks:7,
     slam_dunks:2},
    "Bismak Biyombo"=>
     {number:0,
      shoe: 16,
      points:12,
      rebounds:4,
      assists:7,
      steals:7,
      blocks:15,
      slam_dunks:10},
    "DeSagna Diop"=>
     {number:2,
      shoe: 14,
      points:24,
      rebounds:12,
      assists:12,
      steals:4,
      blocks:5,
      slam_dunks:5},
    "Ben Gordon"=>
     {number:8,
      shoe: 15,
      points:33,
      rebounds:3,
      assists:2,
      steals:1,
      blocks:1,
      slam_dunks:0},
    "Brendan Haywood"=>
     {number:33,
      shoe: 15,
      points:6,
      rebounds:12,
      assists:12,
      steals:22,
      blocks:5,
     slam_dunks:12}
  
 }
   
  }
   
  }
  
 
end
def allplayerz
 array=[]
 game_hash[:home][:players].each do |player, stats|
  copy = stats
  copy[:name] = player
  array.push(copy)
 end
 game_hash[:away][:players].each do |player, stats|
  copy = stats
  copy[:name] = player
  array.push(copy) 
 end
 return array 
end

def num_points_scored(name)
 found_player = allplayerz.find do |player_hash|
  player_hash[:name] == name
 end
 found_player[:points]
end

def shoe_size(name)
 found_player = allplayerz.find do |player_hash|
  player_hash[:name] == name
 end
 found_player[:shoe]
end

def team_colors(team)
  if team==game_hash[:home][:team_name] 
   return game_hash[:home][:colors]
  elsif team==game_hash[:away][:team_name]
  return game_hash[:away][:colors]
end
end

def team_names
 array=[]
 game_hash.each do |status, value|
  copy = value
  nayme=value[:team_name] 
  array.push(nayme)
 end
 return array 
end
  
def player_numbers(team)
  if team==game_hash[:home][:team_name]
   game_hash[:home][:players].map do |player, player_info|
   player_info[:number] 
 end
  elsif team==game_hash[:away][:team_name]
   game_hash[:away][:players].map do |player, player_info|
  player_info[:number] 
 end
  end
end
   
def player_stats(name)
 found_player = allplayerz.find do |player_hash|
  player_hash[:name] == name
 end
 output=found_player
 output.delete(:name)
 return output
end

def find_biggest_shoe 
array=[]
allplayerz.each{ |player| array<<player[:shoe]}
return biggest_shoe=array.max
end

def biggest_shoe_find_name()
 allplayerz.find {|player| player[:shoe]==find_biggest_shoe} 
end

def big_shoe_rebounds
 return biggest_shoe_find_name[:rebounds]
end



    

  
  
  