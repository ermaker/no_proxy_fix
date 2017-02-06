require 'no_proxy_fix/version'

module NoProxyFix
  require 'cext/generic_find_proxy' if RUBY_VERSION.start_with?('2.4.0')
end
