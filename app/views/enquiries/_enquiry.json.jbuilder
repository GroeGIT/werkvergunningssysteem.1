json.extract! enquiry, :id, :reference, :location, :description, :amount, :date, :created_at, :updated_at
json.url enquiry_url(enquiry, format: :json)