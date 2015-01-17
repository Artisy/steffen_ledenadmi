json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :insert, :last_name, :dob, :phone, :adress, :adressNr, :zipcode, :membershipYear
  json.url member_url(member, format: :json)
end
