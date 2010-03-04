require 'posterous/request'
require 'posterous/post'

class Posterous
  attr_accessor :site_id, :hostname, :site
  
  def initialize(options = {})
    raise Posterous::UnknownSite if options.empty?
    
    self.site_id = options[:site_id]
    self.hostname = options[:hostname]
    
    if site_id or hostname
      self.site = site_id || hostname # site_id takes preference
    else
      raise Posterous::UnknownSite
    end
  end
  
  # posterous errors
  class PosterousError < StandardError; end
  # posterous 403 errors
  class Forbidden   < PosterousError; end
  # posterous 400 errors
  class BadRequest  < PosterousError; end  
  # posterous 404 errors
  class NotFound    < PosterousError; end
  # posterous no hostname given
  class HostnameNotGivenOrInvalid < PosterousError; end
  # posterous no site id given
  class SiteIdNotGivenOrInvalid < PosterousError; end
  # posterous no site identification given
  class UnknownSite < PosterousError; end
end