# "Enum" of supported MIME types

module Website
  module HTTP
    MIME_TYPES = {
      'txt'  => 'text/plain',
      'css'  => 'text/css',
      'png'  => 'image/png',
      'jpg'  => 'image/jpeg',
      'jpeg' => 'image/jpeg',
      'ico'  => 'image/x-icon',
      'svg'  => 'image/svg+xml',
      'json' => 'application/json',
      'js'   => 'application/javascript',
      'jsx'  => 'application/javascript',
      'rss'  => 'application/rss+xml'
    }
  end
end
