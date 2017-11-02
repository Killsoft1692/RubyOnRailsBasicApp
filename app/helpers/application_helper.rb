module ApplicationHelper

  def error_messages(object, field)
    if object.errors.key?(field)
      content_tag(:div, object.errors[field].join(','), class: 'help-block')
    end
  end

end
