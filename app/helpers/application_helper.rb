module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "adidas VN"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def image_tag(source, options={})
    super(source, options) if source.present?
  end
  
end

