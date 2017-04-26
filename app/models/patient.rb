class Patient < ActiveRecord::Base
    belongs_to :doctor
    validates_presence_of :first_name , :last_name , length:{ maximum: 10 }
    validates_uniqueness_of :first_name  , case_sensitive: false
    validates_uniqueness_of :last_name  , case_sensitive: false
    def full_name
        "#{f_name} , #{email} ,#{phone_number}"
    end
    
end
