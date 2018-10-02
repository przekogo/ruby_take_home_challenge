module EtherscanAPI
  class Base < APIBase

    private

    BASE_URL = Rails.application.secrets[:etherscan][:base_url]
    API_KEY_PREFIX = "&apikey="
    API_KEY = Rails.application.secrets[:etherscan][:api_key]

    def get_request(path)
      HTTParty.get(
          BASE_URL + path + API_KEY_PREFIX + API_KEY
        )
    end
  end
end
