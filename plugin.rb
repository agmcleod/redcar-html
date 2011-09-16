Plugin.define do
  name    "HTML"
  version "0.1"
  file    "lib", "html.rb"
  object  "Redcar::Html"
  dependencies "application",">0",
               "edit_view" ,">0"
end