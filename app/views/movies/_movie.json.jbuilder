json.extract! movie, :id, :title, :video_url, :created_at, :updated_at
json.url movie_url(movie, format: :json)
