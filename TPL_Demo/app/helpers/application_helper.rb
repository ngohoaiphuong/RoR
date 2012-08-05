module ApplicationHelper
  def full_title(title)
    base_title = default_title
    if(title.empty?)
      base_title
    else
      "#{base_title} | #{title}"
    end
  end 
  
  def get_link(page)
    link = '#'
    case page
    when 'home'
      link = root_path
    when 'about'
      link = pages_about_path
    when 'contact'
      link = pages_contact_path
    when 'signin'
      link = '#'
    end
    
    "#{link}"
  end
  
  def default_title
    'TPL Demo'
  end
  
end
