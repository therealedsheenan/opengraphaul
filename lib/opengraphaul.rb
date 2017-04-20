require "opengraphaul/version"
require 'nokogiri'
require 'open-uri'

module Opengraphaul

  class Base
    attr_accessor :url, :og_image, :og_title, :og_type, :og_url

    def initialize(url)
      @url = url
      @og_image = process("meta[property='og:image']")
      @og_title = process("meta[property='og:title']")
      @og_type = process("meta[property='og:type']")
      @og_url = process("meta[property='og:url']")

    end

    private
    def process(type)
      Nokogiri::HTML(open(self.url)).css(type)
    end
  end

end
