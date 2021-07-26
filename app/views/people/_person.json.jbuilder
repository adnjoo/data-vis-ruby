json.extract! person, :id, :f_name, :m_name, :l_name, :prefix, :address1, :address2, :city, :state, :zipcode, :education, :estimated_income, :created_at, :updated_at
json.url person_url(person, format: :json)
