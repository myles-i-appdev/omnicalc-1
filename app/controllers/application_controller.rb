class ApplicationController < ActionController::Base
    # square
    def blank_square_form
        render({ :template =>"calculation_templates/square_form.html.erb"})
    end

    def square_results
        @input_number =  params.fetch("input_number").to_f
        @result= (@input_number**2).to_s
        render({ :template=>"calculation_templates/square_results.html.erb"})
    end


    #square root
    def blank_square_root_form
        render({ :template =>"calculation_templates/square_root_form.html.erb"})
    end

    def square_root_results
        @input_number =  params.fetch("input_number").to_f
        @result= (@input_number**(0.5))
        render({ :template=>"calculation_templates/square_root_results.html.erb"})
    end

    # random
    def blank_random_form
        render({ :template =>"calculation_templates/random_form.html.erb"})
    end

    def random_results
        @min_number =  params.fetch("min_number").to_f
        @max_number =  params.fetch("max_number").to_f
        @result= rand(@min_number..@max_number)
        render({ :template=>"calculation_templates/random_results.html.erb"})
    end

    # payment
    def blank_payment_form
        render({ :template =>"calculation_templates/payment_form.html.erb"})
    end

    def payment_results
        @apr =  params.fetch("apr").to_f
        @num_years =  params.fetch("num_years").to_f
        @principal =  params.fetch("principal").to_f

        i=@apr/12.0/100
        months = @num_years*12.0

        @monthly_payment=@principal*i / (1 - (1+i)**(-months))
        render({ :template=>"calculation_templates/payment_results.html.erb"})
    end


end
