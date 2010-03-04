require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Posterous do
  it "should accept a site id and use it" do
    p = Posterous.new :site_id => 1234
    p.site.should eql(1234)
  end
  
  it "should accept a hostname and use it" do
    p = Posterous.new :hostname => 'breakbit'
    p.site.should eql('breakbit')
  end
  
  it "should throw an exception without any parameters" do
    lambda do
      p = Posterous.new
    end.should raise_error(Posterous::UnknownSite)
  end
    
  it "should prefer site id over hostname if both present" do
    p = Posterous.new :site_id => 1234, :hostname => 'breakbit'
    p.site.should eql(1234)
  end
end

