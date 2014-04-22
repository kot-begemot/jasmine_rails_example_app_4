if defined?(JasmineRails)
  JasmineRails.instance_eval do
    def fixtures_dir
      path = jasmine_config['fixtures_dir'] || JasmineRails::DEFAULT_TMP_DIR
      Rails.root.join(path)
    end

    def fixtures_path
      path = jasmine_config['fixtures_dir']
    end
  end
end