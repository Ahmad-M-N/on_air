class User < ApplicationRecord
  
  # Associations
  has_many :microposts, dependent: :destroy

  # Before actions
  before_save {self.email.downcase!}
  before_create :create_activation_digest

  # Validations
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  has_secure_password
  validates :password, length: {minimum: 6}, presence: true, allow_nil: true

  # Attribure accessors
  attr_accessor :remember_token, :activation_token

  # Model functions
  # Returns the hash digest of the given string
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  # Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  
  # Updates remeber_digest of the user
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # Updates rember_digest of the user to nil
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  # Returns true if the given token matches the digest.
  def authenticated?(attribute, token)
    digest = self.send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  # Activates a user
  def activate
    update_attribute(:activated, true)
    update_attribute(:activated_at, Time.zone.now)
  end

  # Sends the activation email
  def send_activation_email
    UserMailer.account_activation(self).deliver_now
  end

  # Defines a proto-feed
  def feed
    Micropost.where("user_id = ?", id)
  end

  private

    # Creates and assigns activation token and digest
    def create_activation_digest
      self.activation_token = User.new_token
      self.activation_digest = User.digest(self.activation_token)
    end
  
end
