# Show me a random chinese name
#
# Dependencies:
#   "chinese-random-name": ""
#   "chinese-random-skill": ""
#
# Commands:
#   hubot show a name - return a random chinese name
#   hubot show a skill - return a random chinese skill
#
# Notes:
#   Copyright (c) 2013 c4605
#   Licensed under the ISC license.
#
# Author:
#   c4605

'use strict'

random = {
  name: require('chinese-random-name')
  skill: require('chinese-random-skill')
}

module.exports = (robot) ->
  robot.respond /show a (name|skill)/i, (msg) ->
    return unless random[msg.match[1]]
    msg.send random[msg.match[1]].generate()
