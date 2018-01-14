require 'faraday'
require 'benchmark'

class GlStat::GetReport

  NUMBER_OF_INTERVALS = 6
  INTERVAL_DURATION = 10

  def self.for url
    response_times = []
    (1..(NUMBER_OF_INTERVALS)).each_with_index do |_, index|
      time = Benchmark.realtime { Faraday.get(url) }
      response_times << time
      puts "Response time for #{url} #{time} seconds"
      sleep INTERVAL_DURATION unless index == NUMBER_OF_INTERVALS - 1
    end
    puts "Average response time #{response_times.inject(:+) / response_times.length} seconds"
  end
end
