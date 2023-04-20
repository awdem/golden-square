require 'time_error'
 
RSpec.describe TimeError do
  it "returns the difference in second between server time and computer time" do
    requester_dbl = double :requester
    expect(requester_dbl).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
      .and_return('{"abbreviation":"BST","client_ip":"92.40.216.155",
        "datetime":"2023-04-20T13:21:49.721716+01:00","day_of_week":4,
        "day_of_year":110,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00",
        "dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00",
        "raw_offset":0,"timezone":"Europe/London","unixtime":1681993309,
        "utc_datetime":"2023-04-20T12:21:49.721716+00:00",
        "utc_offset":"+01:00","week_number":16}')

    time_error = TimeError.new(requester_dbl)
    test_time = Time.new(2023,04,20,13,21,50)
    expect(time_error.error(test_time)).to eq -0.278284
  end
end  