for file in `git ls-files`.split
  content = `git stripspace <#{file}`
  if content != File.read(file) then
    puts file
    File.open(file, "w") {|f| f << content}
  end
end
