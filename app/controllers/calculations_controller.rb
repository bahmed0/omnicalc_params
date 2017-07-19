class CalculationsController < ApplicationController
    def flex_square
       # The incoming parameters for this action look like {"a_number" =>"5"}
       # Rails stores that hash in a variable called params
       
       @user_number = params["a_number"].to_i
       @squared_number = @user_number**2
       
       render("calculations/flexible_square_template.html.erb") 
    end
    def flex_square_root
       # The incoming p:1rameters for this action look like {"a_number" =>"5"}
       # Rails stores that hash in a variable called params
       
       @user_number = params["a_number"].to_i
       @squareroot_number = @user_number**(0.5)
       
       render("calculations/flexible_squareroot_template.html.erb") 
    end
end