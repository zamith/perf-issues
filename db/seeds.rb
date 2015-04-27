books = *(1..60).map do |num|
  { name: "Book #{num}", author: "Author #{num % 3}" }
end
books.each do |book|
  Book.where(name: book[:name]).first_or_create.tap do |book_elem|
    book_elem.author = book[:author]
    book_elem.save
  end
end

users = *(1..20).map do |num|
  { name: "User #{num}" }
end
users.each do |user|
  User.where(name: user[:name]).first_or_create.tap do |user_elem|
    offset = rand(Book.count)
    user_elem.books << Book.offset(offset).limit(3)
    user_elem.save
  end
end
