for file in `git ls-files`.split
  if File.file?(file) then
    content = `git stripspace <#{file}`
    if content != File.read(file) then
      puts file
      File.open(file, "w") {|f| f << content}
    end
  end
end
