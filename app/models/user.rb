class User < ActiveRecord::Base
  authenticates_with_sorcery!
has_one :basicinfo
has_one :supporter
has_one :acedemicrecord
has_one :moreinfo
has_one :testscore
    validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true

end
