class Posterous
  class Request
    def self.read
      response = HTTParty.get("http://posterous.com/api/readposts?hostname=#{Posterous::site}")
      return response unless raise_errors(response)
    end
    
    def raise_errors(response)
      return false if response[:rsp][:stat] == "ok"
      # 
      # case code
      #   when 403
      #     raise(Forbidden.new, message)
      #   when 400
      #     raise(BadRequest.new, message)
      #   when 404
      #     raise(NotFound.new, message)
      #   when 201
      #     return false
      # end        
    end
  end
end