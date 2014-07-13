class PhonebooksController < ApplicationController
	
	def index
		@newcontact = Phonebook.new
	end
   
    def add_user
    	@newcontact = Phonebook.create(book_params)
    	if @newcontact.save
    		redirect_to :action => 'show'
    	end
    end
    
    def show
    	@newcontacts = Phonebook.all
    end


    def edit
        @newcontact = Phonebook.find params[:id]
    end

    def update
        
        @newcontact = Phonebook.find params[:id]
    	if @newcontact.update_attributes book_params
    		 redirect_to :action => 'show'
        else
            redirect_to :action => 'edit'
    	end
      
    end

    private
    def book_params
    	params.require(:phonebook).permit(:name,:email,:address)
    end

end
