module NavbarHelper
  def navbar_partial
    true ? 'shared/navbar_public' : 'shared/navbar_member'
  end
end
