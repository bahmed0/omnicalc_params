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
    def flex_payment
       # The incoming p:1rameters for this action look like {"a_number" =>"5"}
       # Rails stores that hash in a variable called params
       
       @apr = params["basis_points"].to_i
       @years = params["number_of_years"].to_i
       @principal = params["present_value"].to_i
       
        rate_as_decimal_permonth = @apr./(100)./(12).to_i
        number_payments = @years.*(12)
        one_plus_monthly_rate = 1.+(rate_as_decimal_permonth).to_f
        discount_factor_numerator = one_plus_monthly_rate.**(number_payments).-(1)
        discount_factor_denominator1 = (one_plus_monthly_rate).**number_payments
        discount_factor_denominator = discount_factor_denominator1.*(rate_as_decimal_permonth)
        discount_factor = discount_factor_numerator./(discount_factor_denominator)
        
        @monthly_payment = @principal./(discount_factor)
       
       render("calculations/flexible_monthlypayment_template.html.erb") 
    end
    def flex_random
       # The incoming parameters for this action look like {"a_number" =>"5"}
       # Rails stores that hash in a variable called params
       
       @min = params["min"].to_i
       @max = params["max"].to_i
       @random_number= rand(@min..@max)
       
       render("calculations/flexible_random_template.html.erb") 
    end
    def square_form
    
     render("calculations/square_form_template.html.erb") 
    end
    
    def process_square_form
    
    @the_number = params["the_user_number"].to_f
    @the_square = @the_number**2
    render("calculations/process_square_form_template.html.erb")
    end
end