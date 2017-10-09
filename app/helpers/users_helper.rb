module UsersHelper

  # Returns The Custom Gravater according to user name

  def avatar_for(user)
    initials = user.first_name[0] + user.last_name[0]
    initials.upcase
  end
end
