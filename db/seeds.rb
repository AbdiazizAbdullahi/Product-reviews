# Delete old data
User.delete_all
Review.delete_all
Product.delete_all

# Create instances of the classes and test the methods


user1 = User.create(name: "Ahmed Ali")
user2 = User.create(name: "Jimmy Smith")
user3 = User.create(name: "John Mwangi")
user4 = User.create(name: "Abdi Moha")
user5 = User.create(name: "Salah Osman")

chocolateBar = Product.create(name: "Chocolate Bar")
gummyBears = Product.create(name: "Gummy Bears")
lolipop = Product.create(name: "Lolipop")
mrberry = Product.create(name: "Mr Berry")
coolcow = Product.create(name: "Coolcow")

review1 = Review.create(user: user1, product: chocolateBar, star_rating: 4, comment: "Great product!")
review2 = Review.create(user: user2, product: chocolateBar, star_rating: 3, comment: "Good but could be better")
review3 = Review.create(user: user1, product: gummyBears, star_rating: 5, comment: "Awesome product!")
review4 = Review.create(user: user2, product: gummyBears, star_rating: 2, comment: "Disappointing")

# Define the methods
def print_all_users
  User.all.map do |user|
    "Name: #{user.name}"
  end
end

def print_all_products
  Product.all.map do |product|
    "Name: #{product.name}"
  end
end

def print_all_reviews
  Review.all.map do |review|
    "User: #{review.user.name}, Product: #{review.product.name}, Comment: #{review.comment}, Rating: #{review.star_rating}"
  end
end

# Call the methods and display the output
puts "Testing..."
puts ""

puts "All Users:"
puts print_all_users
puts ""

puts "All Products:"
puts print_all_products
puts ""

puts "All Reviews:"
puts print_all_reviews
puts ""

puts "#{review1.user.name} has bought #{review1.product.name} and has rated it #{review1.star_rating} - #{review1.comment}"
puts ""

puts "#{review2.user.name} has bought #{review2.product.name} and has rated it #{review2.star_rating} - #{review2.comment}"
puts ""

puts "Test ended!"