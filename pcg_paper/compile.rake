new_file = "<html><head></head><body>"

IO.foreach("style.html") do |line|
  new_file << line
end

1.upto(10) do |n|
  file_name = "chapter#{n}/chapter#{n}.html"
  if File.exists? file_name
    IO.foreach(file_name) do |line|
      new_file << line
    end
    FileUtils.cp_r Dir.glob("chapter#{n}/images/*.png"), 'images'
    FileUtils.cp_r Dir.glob("chapter#{n}/images/*.jpg"), 'images'
  end
end

new_file << "</body></html>"

File.open("index.html", "w") { |file| file.write(new_file) }