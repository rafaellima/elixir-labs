file  = File.stream!("README.md")
lines = Enum.map(file, fn(line) -> Regex.replace(%r/"/, line, "'") end)
File.write("README.md", lines)
