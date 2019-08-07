class Member 

    attr_accessor :name, :bio, :power
    def initialize(params)
        @name = params[:name]
        @bio = params[:bio]
        @power = params[:power]
    end 

end 