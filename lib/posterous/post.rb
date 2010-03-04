class Posterous
  class Post
    def initialize
      
    end
    
    def self.all
      request = Posterous::Request.read
      return request["rsp"]["post"]
    end
  end
end