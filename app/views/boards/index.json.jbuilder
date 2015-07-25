json.array!(@boards) do |board|
  json.extract! board, :id, :title, :body
  json.url board_url(board, format: :json)
end
