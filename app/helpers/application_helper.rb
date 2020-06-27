module ApplicationHelper
  def menu_item(resource_name)
    classes = ['nav-item']
    classes << 'active' if resource_name == controller_name
    content_tag :div, class: classes.join(' ') do
      content_tag(:a, href: "/#{resource_name}", class: 'nav-link') do
        resource_name.titleize
      end
    end
  end
end
