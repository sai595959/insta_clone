module ApplicationHelper
  def post_photo(post)
    image_tag(post.photo, class: 'photo_index')
  end
  def confirm_photo(post)
    image_tag(post.photo.url, class: 'photo_confirm')
  end
end
