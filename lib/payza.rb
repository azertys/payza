module Payza

  class Payza

    def initialize(sandbox = false)
      type = sandbox ? "sandbox" : "live"
      config = YAML.load_file("#{Rails.root}/config/payza.yml") rescue nil
      if config
        @url = config[type]["url"]
        @myUserName = config[type]["user"]
        @apiPassword = config[type]["pass"]
      end
    end

    def call_payza(data, method)
      data.merge!({"USER" => @myUserName, "PASSWORD" => @apiPassword})
      qs = {}
      data.each do |key, value|
        qs[key.to_s.upcase] = URI.escape(value.to_s)
      end

      options = {:body => qs}
      parseResponse HTTParty.post(@url+method, options)
    end

    def parseResponse(input)
      @responseArray = Rack::Utils.parse_nested_query(input)
    end
  end

end
