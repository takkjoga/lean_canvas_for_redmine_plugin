Redmine::Plugin.register :lean_canvas do
  name 'Lean Canvas plugin'
  author 'Takumi Onodera'
  description 'This is a plugin for generate Lean Canvas'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end

Mime::Type.register 'image/svg+xml', :svg
