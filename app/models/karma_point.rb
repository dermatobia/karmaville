# require "debugger"
class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true
  # before_save :add_to_user_total

  # def add_to_user_total
  #   user =  self.user
  #   if user.karma_sum != nil
  #     user.karma_sum += self.value
  #   else
  #     user.karma_sum = self.value
  #   end
  #   user.save
  # end
end
