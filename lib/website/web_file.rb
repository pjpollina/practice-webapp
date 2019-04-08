# Wrapper class for public/web file IO

module Website
  module WebFile
    extend self

    WEB_ROOT = File.expand_path(File.dirname(__FILE__)).gsub('lib/website', 'public/')

    def expand_path(path)
      WEB_ROOT + path
    end

    alias_method(:[], :expand_path)

    def exists?(path)
      File.exist?(expand_path(path)) && !File.directory?(expand_path(path))
    end

    def open(path, mode="r")
      File.open(expand_path(path), mode) do |file|
        yield(file)
      end
    end

    def read(path)
      File.read(expand_path(path))
    end

    def write(path, content)
      File.write(expand_path(path), content)
    end
  end
end