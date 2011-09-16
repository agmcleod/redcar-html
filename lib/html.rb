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
    
    class ConvertToList < Redcar::Command
      def execute
        if doc.selected?
          
        end
      end
    end
  end
end