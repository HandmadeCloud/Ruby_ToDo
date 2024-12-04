Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001' # Next.js 서버의 URL
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head]
  end
end