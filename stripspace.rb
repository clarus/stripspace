for file in `git ls-files`.split
  puts file
  content = `git stripspace <#{file}`
  File.open(file, "w") {|f| f << content}
end
