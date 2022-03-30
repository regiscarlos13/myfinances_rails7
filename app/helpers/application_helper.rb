# frozen_string_literal: true

module ApplicationHelper # :nodoc:
  include BtnHelper
  include TableHelper
  include MessageHelper

  def i18n_yes(field)
    field == true ? 'Sim' : 'Não'
  end

  def disable_field(form, field)
    if action_name == 'new'
      form.input field
    else
      form.input field, disabled: true
    end
  end

  def views_tipo(field, result)
    field == 'Receita' ? content_tag(:span, result, class: 'link-primary fw-bolder') : content_tag(:span, result, class: 'link-danger fw-bolder')
  end

  #--------------------------------------------------------------
  def situation(campo)
    case campo
    when 'Ativo'
      content_tag(:span, campo, class: 'badge bg-success')
    when 'Irregular'
      content_tag(:span, campo, class: 'badge bg-danger ')
    else
      content_tag(:span, campo, class: 'badge bg-secondary')
    end
  end

  def vence(campo)
    if campo > 1
      content_tag(:strong, 'Vencido')
    else
      'À Vencer'
    end
  end

  def data(campo)
    campo.strftime('%d/%m/%Y') if campo.present?
  end

  def cpf_format(cpf)
    "#{cpf[0, 3]}.#{cpf[3, 3]}.#{cpf[6, 3]}-#{cpf[9, 2]}"
  end
end
