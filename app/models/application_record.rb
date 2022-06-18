# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  enum mes: { Janeiro: 1, Fevereiro: 2, Março: 3, Abril: 4,
              Maio: 5, Junho: 6, Julho: 7, Agosto: 8,
              Setembro: 9, Outubro: 10,	Novembro: 11, Dezembro: 12	}
end
