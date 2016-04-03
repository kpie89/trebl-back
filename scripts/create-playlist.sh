curl --include --request POST http://localhost:3000/playlists \
  --header "Content-Type: application/json" \
  --data '{
    "playlist": {
      "title": "99 Problems",
      "desc": "I like this song."
    }
  }'
