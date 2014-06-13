module ApplicationHelper
  def show_yay_message
    unless flash.empty?
      [:yay, :alert].each do |key|
        return content_tag(:div, flash[key], class: "flash-#{key}")
        if flash[key].present?
      end
    end
  end
end
