require 'net/http'
require 'rubygems'
 
payload = <<-eos 
payload={
  "before": "5aef35982fb2d34e9d9d4502f6ede1072793222d",
  "repository": {
    "url": "http://github.com/chris/tracker_github_hook",
    "name": "github",
    "description": "You're lookin' at it.",
    "watchers": 5,
    "forks": 2,
    "private": 1,
    "owner": {
      "email": "chris@cobaltedge.com",
      "name": "chris"
    } 
  },
  "commits": [
    {
      "id": "41a212ee83ca127e3c8cf465891ab7216a705f59",
      "url": "http://github.com/defunkt/github/commit/41a212ee83ca127e3c8cf465891ab7216a705f59",
      "author": {
        "email": "chris@cobaltedge.com",
        "name": "Chris Bailey" 
      },
      "message": "this is a test. first -t 2.0",
      "timestamp": "2009-04-21T14:57:17-08:00",
      "added": ["filepath.rb"]
    },
    {
      "id": "41a212ee83ca321e3c8cf465891cb7216a705f59",
      "url": "http://github.com/defunkt/github/commit/41a212ee83ca127e3c8cf465891ab7216a705f59",
      "author": {
        "email": "brock.whitten@nitobi.com",
        "name": "Chris Bailey" 
      },
      "message": "this is a test. second -t 1.4",
      "timestamp": "2009-04-21T14:58:17-08:00",
      "added": ["filepath.rb"]
    },
    {
      "id": "de8251ff97ee194a289832576287d6f8ad74e3d0",
      "url": "http://github.com/defunkt/github/commit/de8251ff97ee194a289832576287d6f8ad74e3d0",
      "author": {
        "email": "chris@cobaltedge.com",
        "name": "Chris Bailey" 
      },
      "message": "this is a test. third -t 0.8",
      "timestamp": "2009-04-21T14:36:34-08:00" 
    }
  ],
  "after": "de8251ff97ee194a289832576287d6f8ad74e3d0",
  "ref": "refs/heads/master" 
}
eos
 
headers = { 'Content-Type' => 'application/x-www-form-urlencoded' }
 
http = Net::HTTP.new('localhost', 4567)
resp, data = http.post('/nitobi/brock.whitten@nitobi.com/91059/100290/lqpetTy', payload, headers)
 
puts "Response code: #{resp.code}"
puts "Response body: #{data}"