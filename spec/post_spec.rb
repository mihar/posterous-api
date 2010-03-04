require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Posterous::Post, ".all" do
  before do
    @posterous = Posterous.new :hostname => 'breakbeat'
    Posterous::Request.stub!(:read).
      and_return(
        Crack::XML.parse(
          File.read("spec/fixtures/readposts_hostname_breakbeat.xml")
        )
      )
  end
  
  it "should get all posts" do
    posts = Posterous::Post.all
    posts.size.should eql(3)
  end
  
  it "should return an array" do
    posts = Posterous::Post.all
    posts.should be_an_instance_of(Array)
  end
end