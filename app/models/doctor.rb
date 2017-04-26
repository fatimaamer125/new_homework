class Doctor < ActiveRecord::Base
    has_many:patients
    validates_presence_of :f_name , :l_name , length:{ maximum: 10 }
    validates_uniqueness_of :f_name , :l_name
    validates_uniqueness_of :license_no, case_sensitive: false
    validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i  
    validates_format_of :phone_num, with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/

end
