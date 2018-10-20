module RegistrationsHelper
  def minimum_password_hint
    if @minimum_password_length
      # need to make this more dynamic
      if signed_in?
        "; #{@minimum_password_length} characters minimum"
      else
        "#{@minimum_password_length} characters minimum"
      end
    end
  end
end
