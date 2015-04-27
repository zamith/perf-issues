require 'benchmark/ips'
require 'minitest'
require_relative 'test/integration/dashboard_test'

Benchmark.ips do |bm|
  bm.report 'DASHBOARD: Integration test' do
    Minitest.run_one_method(DashboardTest, 'test_dashboard')
  end
end
