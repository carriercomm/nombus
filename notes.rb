# Nombus script notes

b = IPv4.create('50.18.188.104')

ips = [ IPv4.create('50.18.188.104'), IPv4.create('184.72.38.12') ]

a = dns.getresource(domain, Types.A).address

not our_server.eql? n_server and our_old_ips.include? a_record

Name.create ('nsmaster.windermere.com')

domain = Name.create('adamwgriffin.com.')
domain = Name.create( '425house.info' )

dns = DNS.new( {:nameserver=>["8.8.8.8", "8.8.4.4"], :search=>["withwre.com", "mywindermere.com"], :ndots=>1} )

dns = DNS.new( {:nameserver=>["8.8.8.8", "8.8.4.4"]} )

# Shouldln't show: bruceclouse.com
ar = dns.getresource('bruceclouse.com', Types.A).address	