class ApplicationController < ActionController::Base

     before_action :fetch_user


    def fetch_user 
        # check if the user is logged in
        if session[:user_id].present?
        @current_user = User.find_by id: session[:user_id]
        end

        #if e.g. you have re-seeded since logging in,
        # session[:user_id] will be defined and contain an
        #ID, but it will be an invalid ID, i.e. the find_by 
        # above will have returned nil
        unless @current_user.present?
        session[:user_id] = nil #force logout of 'stale' ID
        #
        end
    end 

    def check_if_logged_in
        
        unless @current_user.present? 
            flash[:error] = 'uh-oh! You need to login first!'
            redirect_to login_path
        end #unless

    end #check_if_logged_in
end
