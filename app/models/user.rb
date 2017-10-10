class User
  include Mongoid::Document
  field :provider, :type => String
  field :uid, :type => String
  field :code, :type => String
  field :email, :type => String
  field :role, :type => String
  field :user, :type => String
  belongs_to :identity, :polymorphic => true, :optional => true
  has_many :xmains, :class_name => "Mindapp::Xmain"

  def has_role(role1)
    return role.upcase.split(',').include?(role1.upcase)
  end
  
  def self.from_omniauth(auth)
    where(auth.slice(:uid, :provider, :email)).first_or_create do |user|
      case auth.provider 
        when 'identity'
          identity = Identity.find auth.uid
          user.code = identity.code
          user.email = identity.email
        else
          user.email = auth.info.email
          user.uid = auth.uid
          user.provider = auth.provider
          user.code = auth.info.name
          user.role = "M"
        end
      end
    end
         
  def ma_secured?
    role.upcase.split(',').include?(ma_secured_ROLE)
  end
end
