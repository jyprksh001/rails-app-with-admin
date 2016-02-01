class User < ActiveRecord::Base

	validates :username,presence: true,uniqueness: {case_sensitive: false},
			   length:{ minimum: 3,maximum: 25 }

	valid_email_regex= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email,presence: true, length: {maximum:105},uniqueness: {case_sensitive: false},
			  format:{ with: valid_email_regex }

	validates :mobile,presence: true,uniqueness: true,
              numericality:true,
              length:{ minimum: 10, maximum: 15 }

    has_secure_password

    has_many :orders
end