require 'webrick'

PORT = (ARGV[0] or 8000).to_i

srv = WEBrick::HTTPServer.new({
  BindAddress:    '0.0.0.0',
  Port:           PORT,
})

$access_counter=0

class Servlet < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(req, res)
    $access_counter+=1
p req
    res.body = <<EOF
<!DOCTYPE html>
<html lang="ja">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/></head>
<body>
<center>ようこそ！あなたで #{$access_counter} 人目の来客です</center>
</body></html>
EOF

  end
end

srv.mount("/", Servlet)
srv.start
