class EmployeesController < ApplicationController

   #using befor_action filter 
   before_action :set_employee, only:[:edit,:show,:update,:destroy]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end
 def create 
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to employees_path , notice:"Employee has been created sucessfully"
    else
      render :new
    end
 end

  def edit 
   
  end

  def update  
   
    if @employee.update(employee_params)
      redirect_to employees_path , notice:"Employee has been updated sucessfully"
    else
      render :edit
    end
  end

  def show 
   
  end

  def destroy
     if @employee.destroy
      redirect_to employees_path , notice:"Employee has been Deleted sucessfully"
    end
  end

 private
 def employee_params
  params.require(:employee).permit(:first_name , :last_name, :middle_name,:email,:city,:state,:country,:address_line_1,:pincode,
  :date_of_birth,:job_title,:date_of_joining,:about)
 end

 #create a filter method use in :edit , :show, :update, :destroy
 private
 def set_employee
  @employee = Employee.find(params[:id])
 rescue  ActiveRecord::RecordNotFound => error
  redirect_to  employees_path , notice:error
end

end
