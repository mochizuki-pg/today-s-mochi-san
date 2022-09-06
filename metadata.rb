require 'csv'
require 'json'
require 'optparse'

150.times do |i|
  File.open("#{i}", 'w') { |f|
    json = {
      "tokenId": i,
      "name": "テスト ##{i}",
      "description": 'テスト',
      "image_url": "https://people-done-twitter-rt.onrender.com/assets/1-43fbca433cad1d1dba3452edccb3c2f8d2ca153305900d6cbcf01f1e1eb699fa.png",
      "attributes": {
          "attributes_1": 'テスト',
          "attributes_2": 'テスト',
          "attributes_3": 'テスト'
      }
    }
    f.puts JSON.pretty_generate(json)
  }
end
