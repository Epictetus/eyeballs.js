require 'spec_helper'

describe Eyeballs::AppGenerator do
  let(:test_root) { 'spec/test_root' }
  
  describe "generate a simple app" do
    before(:all) do
      create_test_root
      run_command("eyeballs test")
    end
    let(:app_dir) { file('test', 'app') }
    let(:model_dir) { file('test', 'app', 'models') }
    let(:controller_dir) { file('test', 'app', 'controllers') }
    let(:view_dir) { file('test', 'app', 'views') }
    let(:vendor_dir) { file('test', 'vendor') }
    let(:jquery_dir) { file('test', 'vendor', 'jquery') }
    let(:eyeballs_dir) { file('test', 'vendor', 'eyeballs') }
    let(:mustache_dir) { file('test', 'vendor', 'mustache') }
    
    let(:jquery_file) { file('test', 'vendor', 'jquery', 'jquery-1.4.2.min.js') }
    let(:livequery_file) { file('test', 'vendor', 'jquery', 'jquery.livequery.js') }
    let(:mustache_file) { file('test', 'vendor', 'mustache', 'mustache.js') }
    let(:index_file) { file('test', 'index.html') }
    
    it "should create the test root" do
      File.exists?(test_root).should be_true
    end
    
    it "should create the test app dirs" do
      app_dir.should exist
      model_dir.should exist
      controller_dir.should exist
      view_dir.should exist
      vendor_dir.should exist
      jquery_dir.should exist
      eyeballs_dir.should exist
      mustache_dir.should exist
    end
    
    it "should create the app files" do
      jquery_file.should exist
      livequery_file.should exist
      mustache_file.should exist
      index_file.should exist
    end
    
    after(:all) do
      remove_test_root
    end
  end
end