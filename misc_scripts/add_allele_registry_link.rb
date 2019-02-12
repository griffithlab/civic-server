#!/usr/bin/env ruby

require "uri"
require 'digest/sha1'


# create URL with authentication
# params = vector of param=value
def createUrl2(hostPath, params, login, password)
	# encode parameters
	params2 = []
	params.each { |p|
		i = p.index('=')
		next if i.nil? or (i+1 == p.size)
		p = p[0..i] + URI::escape(p[i+1..-1])
		params2 << p
	}
	# build url
	urlSuffix = "?#{params2.join('&')}"
    hostPathCoded = hostPath.split('/')
    hostPathCoded[0].sub!(/:\d+$/,'')   # remove port number
    hostPathCoded = hostPathCoded.join('/')
    urlCoded = "http://" + hostPathCoded + urlSuffix
    url      = "http://" + hostPath      + urlSuffix
    identity = Digest::SHA1.hexdigest("#{login}#{password}")
    gbTime = Time.now.to_i.to_s
    token = Digest::SHA1.hexdigest("#{urlCoded}#{identity}#{gbTime}")
    request = "#{url}&gbLogin=#{URI::escape(login)}&gbTime=#{gbTime}&gbToken=#{URI::escape(token)}"
    return request
end

def createUrl(hostPath, params)
	# encode parameters
	params2 = []
	params.each { |p|
		i = p.index('=')
		next if i.nil? or (i+1 == p.size)
		p = p[0..i] + URI::escape(p[i+1..-1])
		params2 << p
	}
	# build url
	urlSuffix = "?#{params2.join('&')}"
    url      = "http://" + hostPath      + urlSuffix
    return url
end


if ARGV.size < 2
	puts "Parameters:\n get|post|put|putp|delete  (post & putp require payload; put, putp & delete require login and password)"
	puts " host[:port]/path\n [param1=value1] (before escaping)\n [param2=value2] (before escaping)\n [...]\n [path to file with payload]\n [login]\n [password]"
	exit 1
end


method = ARGV[0].upcase
host_path = ARGV[1]
params = []
params = ARGV[2..-1] if ARGV.size > 2
payload = nil
login = nil
password = nil

if method == "PUT" or method == "PUTP" or method == "DELETE"
	raise "Missing login and password" if params.size < 2
	password = params.pop
	login    = params.pop
end

$stderr.puts "login=#{login}"  if login
$stderr.puts "password=<provided>"  if password

if method == 'POST' or method == "PUTP"
	raise "Missing path to file with payload" if params.size < 1
	payload = params.pop
end

$stderr.puts "payload=#{payload}" if payload

method = "PUT" if method == "PUTP"

url = nil
if login.nil?
	url = createUrl(host_path,params)
else
	url = createUrl2(host_path,params,login,password)	
end

$stderr.puts "url=#{url}"

cmd = "curl -X #{method} \"#{url}\""
cmd += " --data-binary @#{payload}" if not payload.nil?

$stderr.puts "command=#{cmd}"
$stderr.puts "----------------------------------------------------------------"

out = `#{cmd}`
$stderr.puts "----------------------------------------------------------------"

puts "#{out}"
