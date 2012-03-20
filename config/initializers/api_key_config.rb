api_keys_yml = File.read(Rails.root + "config/api_keys.yml")
API_KEYS = YAML.load(api_keys_yml)[Rails.env]