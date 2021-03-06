require 'rubygems'
require 'vendor/sinatra/lib/sinatra.rb'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production,
  :views => '/home/pantulis/whoisbigger.sobrerailes.com/current/views',
  :raise_errors => true
)

log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

require 'whoisbigger.rb'
run Sinatra.application
