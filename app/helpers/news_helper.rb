module NewsHelper
  def generate_path_to_news(type)
    ['/news', '/', type].join("")
  end

  def generate_tab(type)
    tab_classes = ['tab']
    request_type = (params[:path] || "").split("/")[-1]
    css_active = request_type == type ? "active" : ""
    tab_classes.push(css_active)

    content_tag :li, class: tab_classes.join(" ") do
      link_to(type.capitalize, generate_path_to_news(type), class: css_active)
    end
  end

  def server_meta
    {
      available_sites: ["all"] + ::NewsFilter.types
    }.to_json
  end
end
