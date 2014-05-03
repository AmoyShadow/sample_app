class User < ActiveRecord::Base
<<<<<<< HEAD
=======
	before_save { self.email = email.downcase}
	validates :name,presence: true,length:{ maximum:50}
	#编写一个常量用于定义正则表达式
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email,presence: true,format:{ with: VALID_EMAIL_REGEX},
    uniqueness:{ case_sensitive:false}
    validates :password,length: { minimum: 6 }
    has_secure_password

>>>>>>> modelig-users
end
