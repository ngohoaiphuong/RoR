module PagesHelper
  def build_menu_footer(title)
    case title.to_s.downcase
    when "index"
      items = [link_to("About", get_link("about")), 
        link_to("Contact", get_link("contact"))]
    when "about"
      items = ["About", link_to("Contact", get_link("contact"))]
    when "contact"
      items = [link_to("About", get_link("about")), "Contact"]
    end
    menu_footer_(items)
  end
  
  def menu_footer_(items)
    #    contents = items.map {|item| content_tag(:li, item)}
    #    content_tag(:ul, contents)
    content_tag :ul do
      items.collect { |item| concat(content_tag(:li, item)) }
    end 
  end
end
