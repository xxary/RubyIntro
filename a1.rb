#Proc

full_name = Proc.new{|first,last| first + "" + last}
p full_name["Jordan","Hudgens"]



full_name = Proc.new do |first|
	first * 5
end

p full_name["Jordan"]


#Lamda

first_name = lamda{|first,last|first+""+last}
p furst_name["acx","des"]

first_name = ->(first,last){first+""+last}
p furst_name["acx","des"]

#different Proc Lamda

def my_method
	x = lamda{return}
	x.call
	p "ABC"
end

def my_method
	x = Proc.new{return}
	x.call
	p "ABC"
end

#Method argument

def full_name(first_name,last_name)
	first_name + "" + last_name
end

puts full_name "Jordan","Hingen"

def print_adrress city:,state:,zip:
	puts city
	puts state
	puts zip
end

print_adrress city: "Scottable",state:"AZ",zip:24345

def sms_genereater api_key,num,msg,locale
end

sms_generator 555555,'98735how','hey there','US'

def stream_movie title:, lang:
	puts title
	puts lang
end

stream_movie title:"The Fountainhaid",lang;"ENG"

#splat keyword
def roster *players
	puts players
end

roster 'Altuve','Gattis','Spinger','George'


def roster **players_with_positions
	players_with_positions.each do |player,position|
	puts "Player:#{player}"
	puts "position:#{position}"
	puts "\n"
	emd
end

data = {
	"Alutuve":"2nd position",
	"Alex Bragman":"3rd Base",
	"Evans Gattis":"Catcher",
	"Geoge Springer":"OF"
}

roster data


def invoice options={}
	puts options[:company]
	puts options[:total]
	puts options[:somthing_else]
end

invoice company:"Google",total:100.0,something_else:"asdf"


#While loop
i = 0

while i<10
	puts "Hey there"
	i=i+1
end

#using Ruby each eterator

arr=[23,2353,3214,256,3242,53252]

arr.each do |i|
	p i
end

arr.each{|i| p i}

#using for 
for i in 0..42
	p i
end

#nested eterator

teams={
	"hoston stoe" =>{
		"first base"=>"gar e4g",
		"second base"=>"mgrlamg hmtsh",
		"third base"=>"bill eban"
	},
	"Texsa reat" =>{
		"first base"=>"prinse",
		"second base"=>"Aho",
		"third base"=>"yume"
	}
}

teams.each do |team,players|
	puts team
	players.each do |position,player|
		p "#{player} starts at #{position}"
	end
end	


#select method
%w(a b c d e f g).select {|v| v=~ /[aeiou]/}

["1","23.0","0","4"].map{|x| x.to_i}

["1","23.0","0","4"].map(&:to_i)

("a".."g").to_a.map{|i| i*2}

Hash[[1,2.1,3.33,0.9].map{|x| [x,x.to_i]}]

Hash[[1,2.1,3.33,0.9].map{|x| [x.to_i,x]}]

Hash[%w(A djhtroe no rktrl srtrst rtsrs).map{|x| [x,x.length]}]

{:a=>"foo",:b=>"bar"}.map{|a,b| "#{a}="#{b}"}.join('&')

{:a=>"foo",:b=>"bar",:lat=>"120.343,:long=>"33.212"}.map{|a,b| "#{a}="#{b}"}.join('&')

#inject

total = 0

[3,2,4,53,3,3343,5343,12,3].each do |i|
	total += i
end

puts total

[3,2,4,53,3,3343,5343,12,3].inject(&:+)

[3,2,4,53,3,3343,5343,12,3].inject(&:*)


#Ruby collection
x = [12,3,142,545,45]

x

y=Array.new

y[0]=543

y

y[10]=432

y

y.each do |i|
	puts i
end


#deleting item array

batting_average = [0.300,0.180,0.200,0.250]

batting_average.delete_if{|average| average<0.24}


#join methods
teams =["astros","yuankees","ragers","mets","cardinals"]

teams.join(',')

teams.join('-')

teams.join('&')

teams.join('z')


#push pop
teams =["astros","yuankees","ragers","mets","cardinals"]

teams.push("marina") 

teams.push("aaa","bbb")

teams.pop

z=teams.pop



#Hash ruby
posirions={first_dase:"chris varter",second_base:"Jose Altuve",short_stop:"carlos correa"}

posirions={first_dase=>"chris varter",second_base=>"Jose Altuve",short_stop=>"carlos correa"}

positions[:second_base]

#delete hash

people={hosejg:32,tiny:25,krith:10,heater:29}

people.delete(:krith)


#iterator hash

people={hosejg:32,tiny:25,krith:10,heater:29}

people.each_value do |value|
	puts value
end

#hash method

people.invert

people_2=people.invert

people.merge(people_2)


people.to_a

people.keys

people.values



#Ruby conditiohn

players=["correa","carter","altuve"]

unless players.empty?
	players.each{|player| puts player}
end
	
players.each{|player| puts player} unless players.empty?



#OOP

class ApiConnector
	attr_accessor :title,:description,:url
	
	def test_method
		puts "testing class call"
	end
end

api=ApiConnector.new

api.test_method


class ApiConnector
	attr_accessor :title,:description,:url
	
	def initialize(title:title,description:description,url:url)
		@title = title
		@description = description
		@url = url
	end
	
	def testing_initializers
		puts @title
		puts @description
		puts @url
	end
end

api = ApiConnector.new(title:"My Title",description:"My cool description",url:"google.com")
api.testing_initializers





------------------------------------------------------------------
class ApiConnector
	attr_accessor :title,:description,:url
	
	def initialize(title:title,description:description,url:url)
		@title = title
		@description = description
		@url = url
	end
	
	def testing_initializers
		puts @title
		puts @description
		puts @url
	end
end

class SmsConnector<ApiConnector


api = SmsConnector.ApiConnector.new(title:"My Title",description:"My cool description",url:"google.com")
api.testing_initializers
----------------------------------------------------------------------------------
