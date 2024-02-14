  class Passwordbody
    attr_accessor :login, :password
  
    def initialize(login, password)
      @login = login
      @password = password
    end
  
    def to_s
      # "[username: #{login} - password: #{password}]"
      "[username: #{@login} - password: #{@password}]"
    end
  end
