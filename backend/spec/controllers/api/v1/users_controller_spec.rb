require('rails_helper')

describe("Api::V1::Users", type: :request) do
  describe("POST /api/v1/users") do
    it("creates a user and returns json") do
      params = {
        user: {
          first_name: "Jane",
          last_name: "Doe",
          email: "jane@example.com"
        }
      }

      post("/api/v1/users", params: params)

      expect(response).to have_http_status(201)
      json = JSON.parse(response.body)
      expect(json["user"]).to be_a(Hash)
      expect(json["user"]).to include(
        "first_name" => "Jane",
        "last_name" => "Doe",
        "email" => "jane@example.com"
      )
    end
  end
end
