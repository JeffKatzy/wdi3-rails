module ApplicationHelper
  def intellinav
    links = ""

    if @auth.present?
      "<li>#{link_to('logout' + @auth.name, login_path, :method => :delete, :confirm => "Are you sure")}"
      if @auth.is_admin
        links += "<li>#{link_to("Show Users", users_path)}</li>"
      end
      links += "<li>#{link_to('edit profile', edit_users_path)}</li>"
      links += "<li>#{link_to('Logout ' + @auth.name + ' - ' + number_to_currency(@auth.balance), login_path, :method => 'delete', :confirm => 'Are you sure?')}</li>"
    else
      "<li>#{link_to('Create Account', new_user_path)}</li>" +
      "<li>#{link_to('login', login_path)}</li>"
    end
  end

  def is_admin
    @auth.present? && @auth.is_admin
  end
end
