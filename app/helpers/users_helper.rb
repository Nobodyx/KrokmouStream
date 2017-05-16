module UsersHelper
  def avatar_or_placeholder_tag(user)
    if user.avatar.present?
      cl_image_tag(current_user.avatar.path,
        width: 24, height: 24, crop: :fill, alt: current_user.username)
    else
      image_tag("http://placehold.it/24x24")
    end
  end
end