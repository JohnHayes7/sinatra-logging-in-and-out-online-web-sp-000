class Helpers
  
  def self.current_user(session)
    @user = User.all.find_by_id(session[:user_id])
  end
  
  
  def self.is_logged_in?(session)
<<<<<<< HEAD
    
=======
    binding.pry
>>>>>>> 5c796f5666bf8adc73b97d45d026116ebad84764
    if session[:user_id]
      return true
    end
    
  end
end