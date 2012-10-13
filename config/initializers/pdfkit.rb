# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s if Rails.env.production? 
  # config.wkhtmltopdf = '/path/to/wkhtmltopdf'
  config.default_options = {
    :orientation => 'Landscape',
    :page_size => 'A5',
    :margin_top=>"0in",
    :margin_right=>"0.1in",
    :margin_bottom=>"0in",
    :margin_left=>"0.1in"
  #   :print_media_type => true
  }
  # config.root_url = "http://localhost" # Use only if your external hostname is unavailable on the server.
end