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
    ENV['http_proxy'] = 'http://127.0.0.1'
    ENV['no_proxy'] = '192.0.2.2'
    URI('http://example.org/').find_proxy
  end
end
