json.array!(@work_blocks) do |work_block|
  json.extract! work_block, :id, :start_time, :end_time
  json.url work_block_url(work_block, format: :json)
end
