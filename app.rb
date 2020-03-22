require 'webrick'

PORT = (ARGV[0] or 8000).to_i

srv = WEBrick::HTTPServer.new({
  BindAddress:    '0.0.0.0',
  Port:           PORT,
})

puts "Listen port:#{PORT}"

class Servlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(req, res)
    res.body = "HELLO WORLD"
  end
end

srv.mount("/", Servlet)

srv.start

