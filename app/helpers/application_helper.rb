module ApplicationHelper
  def active(page)
    "ativo" if current_page?(page)
  end
end
