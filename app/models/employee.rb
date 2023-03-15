class Employee < ApplicationRecord

   has_many :documents
    validates :first_name, :last_name, presence:true
    validates :email , presence:true , uniqueness:true
    validates :city, :state,:country,:pincode, :address_line_1, presence:true
    
    validates :date_of_birth, :date_of_joining, :job_title , presence:true

    #Using Instance method for  jis se hame jayada html code likhna na pade
    #Note :- Model ki instance method ka use ham , model ke index template ke ander "table-body" 
    #me use karte hai , esa karne se table ke ek hi cloumn me ye tino name ("#{first_name} #{middle_name} #{last_name}" ) 
    # ek sath karte hai 

    # name or address instance method ka use employee ke  index tamplate me kiya 
    def name
        "#{first_name} #{middle_name} #{last_name}"
    end

    def address
        "#{address_line_1}, #{city},#{pincode},#{state},#{country}"
    end

    #eska use me document ke partial form ka karene
    def name_with_email
        "#{name}(#{email})"
    end
end
