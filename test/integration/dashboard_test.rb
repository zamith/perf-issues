require 'test_helper'

class DashboardTest < ActionDispatch::IntegrationTest
  def test_dashboard
    create_fake_data
    get '/dashboard'
    assert_response :success
  end

  private

  def create_fake_data
    books = [
      Book.create(name: 'POODR', author: 'Sandi Metz'),
      Book.create(name: 'Clean Code', author: 'Robert Martin')
    ]
    User.create name: 'Current User', books: books
    User.create name: 'Other User', books: books
    User.create name: 'Another User', books: books
  end
end
