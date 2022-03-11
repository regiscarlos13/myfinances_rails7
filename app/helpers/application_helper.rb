module ApplicationHelper
  include BtnHelper
  include TableHelper

  def situation(campo)
    if campo == "Ativo"
      content_tag(:span, campo, class: "badge bg-success")
    elsif campo == "Irregular"
      content_tag(:span, campo, class: "badge bg-danger ")
    else
      content_tag(:span, campo, class: "badge bg-secondary")
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
    campo.strftime("%d/%m/%Y") if campo.present?
  end

  def cpf_format(cpf)
    "#{cpf[0, 3]}.#{cpf[3, 3]}.#{cpf[6, 3]}-#{cpf[9, 2]}"
  end

  def i18n_yes(field)
    if field == true
     content_tag(:span, 'Sim', class: "badge bg-success")
    else
    content_tag(:span, 'Não', class: "badge bg-danger ")
    end
  end
end
