def InstagramAPI
  class PivotalApi
  def initialize
    @conn = Faraday.new(:url => 'https://www.instagram.com')
  end


  def all_media(token)
    response = @conn.get do |req|
      req.url "tags/geeklife/media/recent"
      req.headers['Content-Type'] = 'application/json'
      req.headers['X-InstagramToken'] = token
    end
    if response.status == 403
      403
    else
    JSON.parse(response.body, symbolize_names: true)[:data][:images][:standard_resolution][:url]
    end
  end


end
