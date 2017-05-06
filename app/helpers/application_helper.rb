module ApplicationHelper
  def post_photo(post)
    image_tag(post.photo, class: 'photo_index')
  end

  def confirm_photo(post)
    image_tag(post.photo.url, class: 'photo_confirm')
  end

  def profile_img(user,page)

    if page == 'index'
      return image_tag(user.avatar, alt: user.name, class:'profile_img_round') if user.avatar?

      unless user.provider.blank?
        img_url = user.image_url
      else
        img_url = 'no_image.png'
      end
        image_tag(img_url, alt: user.name, class:'profile_img_round')

    else
      return image_tag(user.avatar, alt: user.name) if user.avatar?

      unless user.provider.blank?
        img_url = user.image_url
      else
        img_url = 'no_image.png'
      end
        image_tag(img_url, alt: user.name)
    end
  end

end
