module ApplicationHelper

  def intellinav
    links = ""

    if @auth.present?
      links += "<li>#{link_to('Logout' + @auth.name, login_path, :method => 'delete')}</li>"
      links += "<li>#{link_to("priorities", priorities_path) }</li>"
    else
      links += "<li>#{link_to('Create Account', new_user_path)}</li>"
      links += "<li>#{link_to('login', login_path)}</li>"
    end
  end

  def is_admin
    @auth.present? && @auth.is_admin
  end
end
