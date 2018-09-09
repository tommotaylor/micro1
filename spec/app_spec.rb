describe "App", type: :request do
  before do
    get "/"
  end

  it "returns 200 OK from root route" do
    expect(last_response).to be_ok
  end

  it "returns Hello World" do
    expect(last_response.body).to eq("Hello world")
  end
end
