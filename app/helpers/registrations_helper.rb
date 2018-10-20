module RegistrationsHelper
  def minimum_password_hint
    if @minimum_password_length
      "; #{@minimum_password_length} characters minimum"
    end
  end
end
