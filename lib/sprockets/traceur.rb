require "sprockets"
require "sprockets/traceur/version"
require "traceur-rb"

module Sprockets
  module Traceur
    class Template < Tilt::Template
      self.default_mime_type = 'application/javascript'

      def self.engine_initialized?
        true
      end

      def initialize_engine
      end

      def prepare
      end

      def evaluate(scope, locals, &block)
        name = module_name(scope)
        ::Traceur.compile(data, module_name: name, filename: name)
      end

      private

      def module_name(scope)
        asset_paths = scope.environment.paths
        asset_paths.each do |path|
          if file.start_with?(path)
            return basename(file.gsub(path, ''))
          end
        end
        basename(file)
      end

      def basename(file)
        file.gsub(/\.[^\/]+$/, '').gsub(/^\//, '')
      end
    end
  end

  register_engine '.next', Traceur::Template
  register_engine '.es6', Traceur::Template
  append_path ::Traceur.assets_path
end
