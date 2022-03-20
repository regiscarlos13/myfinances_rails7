# frozen_string_literal: true

module MessageHelper # :nodoc:
  def message(name)
    case name
    when 'notice' || 'success'
      'success'
    when 'alert'
      'warning'
    else
      'error'
    end
  end
end
