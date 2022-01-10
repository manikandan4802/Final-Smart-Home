json.extract! invitation, :id, :recipient_email, :agent_id, :lockcode_id, :property_id, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
