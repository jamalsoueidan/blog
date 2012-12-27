module ApplicationHelper
  def breadcrumbs(options={})
    content_tag :ul, :class => :breadcrumbs do
      concat(content_tag :li, link_to('Start side', '/'))
      options.each_with_index do |key, index|
        is_current_url = ( options.length == (index+1) ? 'current' :  '')
        concat(content_tag(:li, link_to(key[0], key[1]), :class => is_current_url))
      end
    end
  end

  def bread(name, content = nil, &block)
    if !block_given?

    end
  end
end
