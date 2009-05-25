
new_file = ""

1.upto(10) do |n|
  file_name = "chapter#{n}/chapter#{n}.html"
  if File.exists? file_name
    IO.foreach(file_name) do |line|
      new_file << line
    end
  end
end

File.open("index.html", "w") { |file| file.write(new_file) }