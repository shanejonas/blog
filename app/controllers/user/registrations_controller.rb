class User::RegistrationsController < Devise::RegistrationsController
            
  def new
    redirect_to "/"
    return
  end
  

end
