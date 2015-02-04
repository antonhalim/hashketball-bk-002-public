# Write your code here!
require 'pry'
require 'pry-nav'

def game_hash
	
{
	"Charlotte Hornets" => 
		{
			:colors => ["Turquoise", "Purple"],

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
						"Bismak Biyombo" =>{
							:number => 0,
					        :shoe => 16,
					        :points => 12,
					        :rebounds => 4,
					        :assists => 7,
					        :steals => 7,
					        :blocks => 15,
					        :slam_dunks => 10
							},
						"DeSagna Diop" =>{
							:number => 2,
					        :shoe => 14,
					        :points => 24,
					        :rebounds => 12,
					        :assists => 12,
					        :steals => 4,
					        :blocks => 5,
					        :slam_dunks => 5
							},
						"Ben Gordon" =>{
							:number => 8,
					        :shoe => 15,
					        :points => 33,
					        :rebounds => 3,
					        :assists => 2,
					        :steals => 1,
					        :blocks => 1,
					        :slam_dunks => 0
							},
						"Brendan Haywood" =>{
							:number => 33,
					        :shoe => 15,
					        :points => 6,
					        :rebounds => 12,
					        :assists => 12,
					        :steals => 22,
					        :blocks => 5,
        					:slam_dunks => 12
							}
		},
	
		"Brooklyn Nets" => { 
			:colors => ["Black", "White"],
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
	}
end

def num_points_scored(name)
	game_hash.each do |team, v|
		if v.include?(name) == true
			return (v[name])[:points]
		end
	end
end

def shoe_size(hash)
	game_hash.each do |team, v|
		if v.include?(hash) == true
			return (v[hash])[:shoe]
		end
	end
end

		def team_colors(team)
			game_hash.each do |key, value|
				if key == team
					return value[:colors]
				end
			end
		end


def team_names
		game_hash.keys
end

def player_numbers(team)
		numbers = []
		game_hash.each do |key, name|
			#key == brooklyn, charolotte
			#name == player name
			if key == team
			name.each do |player, stats|
				#player == player name , stats == stats
				if stats.is_a? Hash
				numbers << stats[:number]
			end
		end
	end
end
		numbers
end


def player_stats(playername)
		game_hash.each do| key, name|
		if name.include?(playername)
		return name[playername]
		end
		end
end

def big_shoe_rebounds
	bigshoe = 0
	rebound = 0
		game_hash.each do |key, name|
			#name player name
			name.each do |player, stats|
				# bigshoe = stats[:shoe]
				if stats.is_a? Hash
				if bigshoe < stats[:shoe]
						bigshoe = stats[:shoe]
						rebound = stats[:rebounds]
					end
				end
			end
		end
		rebound
	end


















