class APIBase < ApplicationService

  private

  def get(path)
    @response = get_request(path)
    handle_response
  end

  def get_request(path)
    HTTParty.get(
        path
      )
  end

  def handle_response
    return JSON.parse(@response.body, symbolize_names: true) if @response.success?
    raise_response_error
  end

  def raise_response_error
    raise HTTParty::ResponseError.new(@response), "Code #{@response.code} - #{@response.body}"
  end

end
