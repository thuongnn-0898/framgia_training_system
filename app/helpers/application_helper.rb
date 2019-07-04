module ApplicationHelper
  def title page_title
    base_title = I18n.t "title"
    if page_title.blank?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def role_name user
    user.role == 1 ? "Supervisor" : "Trainee"
  end
end
