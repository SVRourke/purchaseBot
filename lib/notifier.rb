require 'rest-client'

def notify(title, price)
    url = 'https://maker.ifttt.com/trigger/change/with/key/e7PWUQWsXJSFZnq85VejX7SQHoYaCbwXqSPTcvhtsY5'
    payload = {
        :value1 => title,
        :value2 => price
    }
    RestClient.post(url, payload)
end
    

# post or get request to
# https://maker.ifttt.com/{EVENT}/with/key/e7PWUQWsXJSFZnq85VejX7SQHoYaCbwXqSPTcvhtsY5

# optional JSON BODY
# {"value1" :"TITLE", "value2" :"PRICE", "value3" :"VALUE"}qui