class ApplicationController < ActionController::Base
    def blank_square_form
        render({ :template =>"calculation_templates/square_form.html.erb"})
    end

    def square_results
        @input_number =  params.fetch("input_number").to_f
        @result= (@input_number**2).to_s
        render({ :template=>"calculation_templates/square_results.html.erb"})

    end

end
