import system
import std/[random, strutils, json]
import xnim

proc readRandomLine*(filename: string): string =
  let file = open(filename)
  defer: file.close()

  var lines = file.readAll().splitLines()

  if lines.len == 0:
    return ""

  randomize()
  let randomIndex = rand(lines.len - 1)

  # Return the random line
  return lines[randomIndex]

let randomLine = readRandomLine("./images.txt")

# This is API Key
const CONSUMER_KEY: string = "GET"

# This is the API secret key
const CONSUMER_SECRET: string = "YOUR"

# This is the Authentication Access Token
const ACCESS_TOKEN: string = "OWN"

# This is the Authentication Access Secret
const TOKEN_SECRET: string = "KEYS"

const xCli: XAPI = newXAPI(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, TOKEN_SECRET)

var mediaId = json.parseJson(xCli.PostMedia(randomLine))["media_id_string"]
let res: string = xCli.PostTextTweet("", @[mediaId.str])
