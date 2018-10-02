module SupportAPI
  class GetEthereumConversion < APIBase
    def call(currency)
      response = get("?start=283&limit=1&sort=id&convert=#{currency}")
      response.dig(:data, :"1027", :quotes, currency.to_sym, :price) || -1
    end

    private

    BASE_URL = "https://api.coinmarketcap.com/v2/ticker/"

    def get_request(path)
      HTTParty.get(
          BASE_URL + path
        )
    end
  end
end
