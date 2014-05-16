require 'sinatra'
require 'rack'

module Rack
  module Multipart
    class Parser
      def parse_with_logging
        begin
          puts "starting processing"
          results = parse_without_logging
          puts "rack processed #{results.count} files"
          results
        rescue => e
          puts e.message
        end
      end
      alias_method :parse_without_logging, :parse
      alias_method :parse, :parse_with_logging
    end
  end
end

post '/' do
  "hi"
end
