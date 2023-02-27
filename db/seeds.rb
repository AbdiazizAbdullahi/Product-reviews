
# Create instances of the classes and test the methods
user1 = User.create(name: "Ahmed Ali")
user2 = User.create(name: "Jammy Smith")

product1 = Product.create(name: "Product 1")
product2 = Product.create(name: "Product 2")

review1 = Review.create(user: user1, product: product1, star_rating: 4, comment: "Great product!")
review2 = Review.create(user: user2, product: product1, star_rating: 3, comment: "Good but could be better")
review3 = Review.create(user: user1, product: product2, star_rating: 5, comment: "Awesome product!")
review4 = Review.create(user: user2, product: product2, star_rating: 2, comment: "Disappointing")

# Test the methods
puts review1.user == user1
puts review1.product == product1

puts product1.reviews == [review1, review2]
puts product1.users == [user1, user2]

puts user1.reviews == [review1, review3]
puts user1.products == [product1, product2]

puts product1.average_rating == 3.5

product1.leave_review(user2, 5, "Excellent product!")
puts product1.average_rating == 4

user1.remove_reviews(product2)
puts user1.reviews == [review1]
puts product2.reviews == [review2]
