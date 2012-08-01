module ApplicationHelper
  def full_title(title)
    base_title = defaultTitle
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
      link = '#'
    when 'about'
      link = '#'
    when 'contact'
      link = '#'
    when 'signin'
      link = '#'
    end
    '#{link}'
  end
  
  def defaultTitle
    'TPL Demo'
  end
end
