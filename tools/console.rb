require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Startups
youtube = Startup.new("youtube", "John", "youtube.com")
google = Startup.new("google", "Billy", "google.com")
amazon = Startup.new("amazon", "Jeff", "amazon.com")
flatiron= Startup.new("flatiron", "Avi", "flatiron.com")
yahoo = Startup.new("yahoo", "Mike", "yahoo.com")
samsung = Startup.new("samsung", "Satoshi", "samsung.com")
nike = Startup.new("nike", "Ling", "nike.com")
adidas = Startup.new("adidas", "Charles", "adidas.com")
microsoft = Startup.new("microsoft", "Bill", "microsoft.com")
apple = Startup.new("apple", "Steve", "apple.com")
linkedin = Startup.new("linkedin", "Henry", "linkedin.com")
ikea = Startup.new("ikea", "Charlie", "ikea.com")

# venture_capitalist
buffet = VentureCapitalist.new("Warren Buffet", 3_000_000_000)
bezos = VentureCapitalist.new("Jeff Bezos", 2_000_000_000)
jobs = VentureCapitalist.new("Steve Job", 100_000_000)
gates = VentureCapitalist.new("Bill Gates", 2_000_000_000)
kanye = VentureCapitalist.new("Kanye West", 1_000_000_000)
kimk = VentureCapitalist.new("Kim Kardashian", 500_000)
mm = VentureCapitalist.new("Eminem", 500_000)
biden = VentureCapitalist.new("Joe Biden", 1_000_000_000)
trump = VentureCapitalist.new("Donald Trump", 100_000)
me = VentureCapitalist.new("Me", 10)
jayz = VentureCapitalist.new("Jay-Z", 200_000_000)
billie = VentureCapitalist.new("Billie Eilish", 100_000) 

youtube.sign_contract(buffet, "Seed", 2_000_000)
youtube.sign_contract(buffet, "Seed", 1_000_000)
google.sign_contract(buffet, "Seed", 2_000_000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line