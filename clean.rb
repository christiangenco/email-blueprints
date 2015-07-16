require 'htmlbeautifier'

Dir.glob("*/*.html").each{|filename|
  filename = File.expand_path(File.dirname(__FILE__), filename)
  pretty = HtmlBeautifier.beautify(File.read(filename))
  File.open(filename, 'w'){|f| f.puts pretty}
}
