class UsersController < ApplicationController
  def index
    @users =  User.by_karma.limit(50)
  end

  def page
   @users = User.by_karma.page(params[:page].to_i )
   render "index"
  end
end


# Returns an array of Person objects, with only the id & name
# Person.select(:id, :name)
# Returns an array of the first 100 active persons: [1,2,4,6,...]
# Person.active.limit(100).pluck(:id)

# User.joins(:karma_points).group('users.id').order('SUM(karma_points.value) DESC').pluck(:first_name,:last_name,:username, :email, :karma_points.sum(:value)).limit(50)
