# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
    helper :all # include all helpers, all the time
    protect_from_forgery # See ActionController::RequestForgeryProtection for details
    helper_method :current_user_session, :current_user, :my_fecha
    filter_parameter_logging :password, :password_confirmation

    private
        def my_fecha(fecha)
           fecha.to_s(:my_date)
        end
        
        def current_user_session
            return @current_user_session if defined?(@current_user_session)
            @current_user_session = UserSession.find
        end

        def current_user
            return @current_user if defined?(@current_user)
            @current_user = current_user_session && current_user_session.record
        end

        def require_user
            unless current_user
                store_location
                flash[:notice] = "Debe iniciar sesion para acceder a esta pagina."
                redirect_to new_user_session_url
                return false
            end
        end

        def require_no_user
            if current_user
                store_location
                flash[:notice] = "NO debe iniciar sesion para acceder a esta pagina"
                redirect_to account_url
                return false
            end
        end

        def store_location
            session[:return_to] = request.request_uri
        end

        def redirect_back_or_default(default)
            redirect_to(session[:return_to] || default)
            session[:return_to] = nil
        end

end
