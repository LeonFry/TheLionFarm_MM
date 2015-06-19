###
# Site Config
###

# Helpers
helpers do
  def pretty_date(date)
    date.strftime('%B %d, %Y')
  end
end

# Reload the browser
configure :development do
  activate :livereload
end

# Have sprockets look asset files and require them
# after_configuration do
#   sprockets.append_path File.join root, 'bower_components'
#   sprockets.append_path File.join root, 'js'
# end


# Blog Config

activate :blog do |blog|
  blog.name = "posts"
  blog.prefix = "posts"
  blog.layout = "blog"
<<<<<<< HEAD
  blog.permalink = "TheLionFarm_MM{title}.html"
=======
  blog.permalink = "TheLionFarm_MM/{title}.html"
>>>>>>> fe7a7228bd045eea8f91dbc493d428762c6b148c
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.summary_separator = /READMORE/
  blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".html.markdown"
  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end
activate :blog do |blog|
  blog.name = "projects"
  blog.prefix = "projects"
  blog.layout = "blog"
   blog.permalink = "{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.summary_separator = /READMORE/
  blog.summary_length = 200
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".html.markdown"
  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end
activate :blog do |blog|
  blog.name = "store"
  blog.prefix = "store"
  blog.layout = "layout"
  # blog.permalink = "{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  blog.summary_separator = /READMORE/
  blog.summary_length = 200
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".html.markdown"
  # blog.tag_template = "tag.html"
  # blog.calendar_template = "calendar.html"
  blog.paginate = false
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end
page "/feed.xml", layout: false

# Directory Settings
set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'
set :relative_links, true

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  # activate :asset_hash
  activate :directory_indexes
  activate :gzip
  activate :imageoptim, pngout: false, svgo: false
  activate :relative_assets
end