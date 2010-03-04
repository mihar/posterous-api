require 'rubygems'
require 'crack'
require 'httparty'
require 'spec'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'posterous'

Spec::Runner.configure do |config|
  
end
