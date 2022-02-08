class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token, :only => :create

  def create
    puts 'Debug 1'
    self.resource = warden.authenticate!(auth_options)
    puts resource
    puts resource.otp_module_disabled?
    puts resource_name

    if resource && resource.otp_module_disabled?
      puts 'Debug 2'
      continue_sign_in(resource, resource_name)
      puts 'Debug 3'

    elsif resource && resource.otp_module_enabled?

      if params[:user][:otp_code_token].size > 0
        if resource.authenticate_otp(params[:user][:otp_code_token], drift: 60)
          continue_sign_in(resource, resource_name)
        else
          sign_out resource
          redirect_to root_url, alert: 'Bad Credentials Supplied.'
        end
      else
        sign_out resource
        redirect_to root_url, alert: 'Your account needs to supply a token.'
      end

    end
  end

  private

  def continue_sign_in(resource, resource_name)
    puts 'Debug 4'
    set_flash_message!(:notice, :signed_in)
    puts 'Debug 5'
    sign_in(resource_name, resource)
    puts 'Debug 6'
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end
end
