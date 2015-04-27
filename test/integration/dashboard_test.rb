require 'test_helper'

class DashboardTest < ActionDispatch::IntegrationTest
  test 'visit the dashboard' do
    get '/dashboard'
    assert_response :success
  end
end
