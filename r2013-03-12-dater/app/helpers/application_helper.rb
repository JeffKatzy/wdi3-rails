module ApplicationHelper

  def login_nav
    nav = ""

    if subscriber.present? && @subscriber.has_subscription?
      nav += "<li>#{link_to('Profile', '#', :class => 'button tiny success')}</li>"
    end

    if @auth.present?
      "<li>#{link_to(@auth.username, '/login', :method => :delete, :class => 'button tiny alert username', :remote => true)}</li>"
    end
  end
end
