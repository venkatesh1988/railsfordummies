class PhonebooksController < ApplicationController

	def index
		@newcontact = Phonebook.new
	end
   
    def create
    	@newcontact = Phonebook.create book_params
        
        if !@newcontact.errors.empty?
            render :action => 'index'
        else
            
            WelcomeMailer.welcome_mail(@newcontact).deliver
            flash[:notice] = "Contact Successfully saved."
            redirect_to phonebooks_show_path
        end
    end
    

    def show
    	@newcontacts = Phonebook.all
    end

    def destroy
        @newcontact = Phonebook.find params[:id]
        if @newcontact.destroy
            flash[:notice] = "Entry deleted successfully!"
            redirect_to :action => 'show'
        end
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
