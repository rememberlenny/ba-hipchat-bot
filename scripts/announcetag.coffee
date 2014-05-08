module.exports = (robot) ->
  robot.hear /tagadd (.*)/i, (msg) ->
    message = msg.match[1]
    msg.send "Added: #{message}"
    robot.http( "http://www.buildhook.com/endpoint/bonappetit/add/#{message}" )
     (err, res, body) ->
      msg.send "Got back #{body}"
