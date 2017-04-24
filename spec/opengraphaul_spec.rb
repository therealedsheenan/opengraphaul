require "spec_helper"
require "./lib/opengraphaul"

RSpec.describe Opengraphaul do
  before(:all) do
    SAMPLE_URL = "http://ogp.me"
    @ogs = Opengraphaul::Base.new(SAMPLE_URL)
  end

  it "has a version number" do
    expect(Opengraphaul::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  it "Should initialize base" do
    expect(@ogs.nil?).to eq(false)
  end

  it "Should return standard og:image data" do
    expect(@ogs.og_image.nil?).to eq(false)
  end

  it "Should return standard og:title data" do
    expect(@ogs.og_title.nil?).to eq(false)
  end

  it "Should return standard og:type data" do
    expect(@ogs.og_type.nil?).to eq(false)
  end

  it "Should return standard og:url data" do
    expect(@ogs.og_url.nil?).to eq(false)
  end
end
