json.array!(@jobs) do |job|
  json.extract! job, :id, :title, :category, :headquarters, :description, :how_to_apply, :company_name, :company_email, :company_url, :company_logo_url
  json.url job_url(job, format: :json)
end
