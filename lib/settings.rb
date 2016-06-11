require 'yaml'

module Settings
  extend self

  def method_missing(method_name)
    EnvironmentStruct.new(method_name, config_for(method_name))
  end

  private

  def config_for(filename, path = ['./', 'config'])
    @file_cache ||= {}
    @file_cache[filename] ||= begin
      filename = "#{filename.to_s}.yml"
      filepath = File.join(path << filename)
      YAML.load_file(filepath)[environment] || {}
    end
  end

  def environment
    ENV['RACK_ENV']
  end

  class EnvironmentStruct
    def initialize(namespace, config)
      @namespace = namespace.to_s
      @config = config.with_indifferent_access
    end

    def method_missing(method_name)
      environment_variable_for(method_name) or file_variable_for(method_name)
    end

    private

    def environment_variable_for(method_name)
      ENV["#{@namespace}_#{method_name.to_s}".upcase]
    end

    def file_variable_for(method_name)
      var = @config[method_name]
      var.is_a?(Hash) ? EnvironmentStruct.new(method_name, var) : var
    end
  end
end
