class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


	def after_sign_in_path_for(resource)
      redirectToLocation = stored_location_for(:user)
      if (redirectToLocation)
        return redirectToLocation
    	else
        root_path
    	end
  	end
  def after_sign_out_path_for(resource)
      root_path
    end

    def store_location_for(resource_or_scope, location)
        session_key = stored_location_key_for(resource_or_scope)
        uri = parse_uri(location)
        if uri
          	path = [uri.path.sub(/\A\/+/, '/'), uri.query].compact.join('?')
          	path = [path, uri.fragment].compact.join('#')
          	session[session_key] = path
        end
    end

    def stored_location_for(resource_or_scope)
        session_key = stored_location_key_for(resource_or_scope)

        if is_navigational_format?
        	session.delete(session_key)
        else
        	session[session_key]
        end
    end


	private

		def parse_uri(location)
			location && URI.parse(location)
			rescue URI::InvalidURIError
				nil
	    end

		def stored_location_key_for(resource_or_scope)
	        scope = Devise::Mapping.find_scope!(resource_or_scope)
	        "#{scope}_return_to"
		end



end
