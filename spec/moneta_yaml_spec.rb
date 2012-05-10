require File.dirname(__FILE__) + '/spec_helper'

begin
  require "moneta/adapters/yaml"
  path = File.expand_path("../yaml_cache", __FILE__)

  describe "Moneta::Adapters::YAML" do

    before(:each) do
      @cache = Moneta::Builder.new do
        run Moneta::Adapters::YAML, :path => path
      end
      @cache.clear
    end

    after(:all) do
      FileUtils.rm_rf(path)
    end

    if ENV['MONETA_TEST'].nil? || ENV['MONETA_TEST'] == 'yaml'
      it_should_behave_like "a read/write Moneta cache"
    end
  end

  describe "Moneta::Adapters::YAML with an existing empty file" do
    it "should initialize with an empty hash" do
      require 'fileutils'
      FileUtils.touch(path)
      @cache = Moneta::Builder.new do
        run Moneta::Adapters::YAML, :path => path
      end
      lambda { @cache['some_key'] }.should_not raise_error
    end
  end
rescue SystemExit
end
