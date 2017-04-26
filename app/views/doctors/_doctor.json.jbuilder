json.extract! doctor, :id, :f_name, :l_name, :license_no, :email, :phone_num, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)