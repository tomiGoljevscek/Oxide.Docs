set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :fonts_dir, 'fonts'

set :markdown_engine, :redcarpet

set :markdown, :fenced_code_blocks => true, :smartypants => true, :disable_indented_code_blocks => true, :prettify => true, :tables => true, :with_toc_data => true, :no_intra_emphasis => true

# Activate automatic page reloading
activate :livereload

# Activate the syntax highlighter
activate :syntax

# This is needed for GitHub pages, since they're hosted on a subdomain
activate :relative_assets
set :relative_links, true

# Build-specific configuration
configure :build do
  # Minify static assets on build
  activate :minify_css
  activate :minify_html
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
