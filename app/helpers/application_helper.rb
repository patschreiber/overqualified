module ApplicationHelper

  def company_name
    "Overqualified."
  end

  def full_company_name
    "Overqualified LLC"
  end

  def current_year
    DateTime.now.strftime( "%Y" )
  end
end
