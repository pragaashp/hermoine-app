
class ProfessorPageController < ApplicationController
    
    # before_filter RubyCAS::Filter
    
    def professor_page
        @professor = 'naathaan'
        @requests = Request.where(professor: 'naathaan')
        render template: "main/professor_page"
    end
    
end