module Redcar
  class Html
    def self.menus
      Redcar::Menu::Builder.build do
        sub_menu "Plugins" do
          sub_menu "Html" do
            item "Convert to List", ConvertToList
          end
        end
      end
    end
    
    def self.keymaps
        map = Redcar::Keymap.build("main", [:osx, :linux, :windows]) do
            link "Ctrl+Shift+L", ConvertToList
        end
        [map]
    end
    
    class ConvertToList < Redcar::EditTabCommand
      def execute
        if doc.selection?
          text = doc.selected_text
          lines = text.split(/\r\n?|\n/)
          lines.collect! do |c| 
            wrapped = wrap_text_in_white_space(c) { |t| "<li>#{t}</li>" } 
            p "Wrapped: |#{wrapped}|"
            wrapped
          end
          doc.replace_selection(lines.join("\n"))
        end
      end
      
      def wrap_text_in_white_space(text, &wrap_with)
        r = /^[\t\s]+/
        if r =~ text
          partitions = text.partition(r)
          wrapped = yield(partitions[2])
          "#{partitions[1]}#{wrapped}"
        else
          yield(text)
        end
      end
    end
  end
end