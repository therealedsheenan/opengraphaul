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


      # optional metadata
      @og_audio = process("meta[property='og:audio']")
      @og_description = process("meta[property='og:description']")
      @og_determiner = process("meta[property='og:determiner']")
      @og_local = process("meta[property='og:local']")
      @og_local_alternate = process("meta[property='og:local:alternate']")
      @og_site_name = process("meta[property='og:site_name']")
      @og_video = process("meta[property='og:video']")
    end

    private
    def process(type)
      Nokogiri::HTML(open(self.url)).css(type)
    end
  end

end
