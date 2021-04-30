module ApplicationHelper
  include Pagy::Frontend

  def active(page)
    'ativo' if current_page?(page)
  end
end
