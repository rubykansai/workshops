class ApacheLog
  attr_reader :remote_host, :remote_user, :time
  attr_reader :request_method, :request_uri, :server_protocol
  attr_reader :status, :size, :referer, :user_agent

  LogFormat  = /\A(\S+) \S+ (\S+) \[([^\]]+)\] "([A-Z]+) (\S+) (\S+)" (\d+) ([\d\-]+)(?: "(.+)" "(.+)")?\Z/
  TimeFormat = %r!\A(\d\d)/([A-Z][a-z][a-z])/(\d\d\d\d):(\d\d):(\d\d):(\d\d)!
  Month      = %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)


  def initialize( line )
    m = LogFormat.match( line )
    raise "Invalid line: #{line}" unless m

    @remote_host, @remote_user, @time = m[1..3]
    @request_method, @request_uri, @server_protocol = m[4..6]
    @status, @size, @referer, @user_agent = m[7..10]
    parse_time
  end

  def parse_time
    m = TimeFormat.match( @time )
    raise "Invalid time: #{@time}" unless m

    @time = Time.local(m[3].to_i, Month.index(m[2])+1, m[1].to_i,
                       m[4].to_i, m[5].to_i, m[6].to_i)
  end
end
