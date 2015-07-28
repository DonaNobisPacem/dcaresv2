class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :can_edits
  has_many :universities, through: :can_edits

  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end

  def generate_auth_token
    loop do
      self.auth_token = SecureRandom.hex
      return unless self.class.exists?(auth_token: auth_token)
    end
    save!
    auth_token
  end
end
