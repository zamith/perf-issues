class User < ActiveRecord::Base
  has_many :books

  def my_books
    100_000.times do
      10 ** SecureRandom.random_number(1000)
    end
    books
  end
end
