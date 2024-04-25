module NavbarHelper
  def navbar_partial
    current_user ? 'shared/navbar_member' : 'shared/navbar_public'
  end
end
