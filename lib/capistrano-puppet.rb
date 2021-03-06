require "capistrano-puppet/version"
require 'rest_client'
require 'json'

module CapistranoPuppet

  class Server
    attr_reader :server_list
    attr_reader :puppet_web

    def initialize(puppet_web)
      @puppet_web = puppet_web
      contents = RestClient.get(@puppet_web).to_s
      @json = JSON.parse(contents)
    end

    def get_servers(tag)
      server_list = []
      @json.each do |host, details|
        server_list << host if details['tags'].include? tag
      end
      server_list
    end
  end

end
