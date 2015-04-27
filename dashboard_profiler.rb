require 'stackprof'
require 'minitest'
require_relative 'test/integration/dashboard_test'

StackProf.run(mode: :wall, out: 'stackprof.dump') do
  50.times do
    Minitest.run_one_method(DashboardTest, 'test_dashboard')
  end
end
