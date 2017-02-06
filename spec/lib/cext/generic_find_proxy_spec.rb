require 'no_proxy_fix'

RSpec.describe URI do
  around do |example|
    http_proxy = ENV['http_proxy']
    no_proxy = ENV['no_proxy']
    example.run
    ENV['http_proxy'] = http_proxy
    ENV['no_proxy'] = no_proxy
  end

  it 'works' do
    URI('http://example.org/').find_proxy
  end
end
