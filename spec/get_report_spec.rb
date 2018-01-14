require 'benchmark'
require 'gl-stat'

describe GlStat::GetReport do

  before do
    @time_now = Time.now.to_f
    stub_const("GlStat::GetReport::NUMBER_OF_INTERVALS", 2)
    stub_const("GlStat::GetReport::INTERVAL_DURATION", 0)
    allow(Benchmark).to receive(:realtime).and_return(@time_now)
  end

  context "2 responses one after the another" do

    it 'Outputs average response time for specified website' do
      expect { GlStat::GetReport.for "http://foo.com"
      }.to output( %Q{Response time for http://foo.com #{@time_now} seconds
Response time for http://foo.com #{@time_now} seconds
Average response time #{@time_now} seconds\n}
                 ).to_stdout
    end
  end
end
