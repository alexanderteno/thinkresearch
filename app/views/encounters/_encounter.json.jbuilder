json.extract! encounter, :id, :visit_number, :admitted_at, :discharged_at, :location, :room, :bed, :patient_id, :created_at, :updated_at
json.url encounter_url(encounter, format: :json)