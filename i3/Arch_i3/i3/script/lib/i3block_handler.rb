require 'json'

module I3BlockHandler

    COLOR_BLUE          =  "#2397fc"
    COLOR_LIGHT_BLUE    =  "#65e2eb"
    COLOR_CYAN          =  "#1a92ba"
    COLOR_DARK_CYAN     =  "#24596b"
    COLOR_GREEN         =  "#26bb73"
    COLOR_LIGHT_GREEN   =  "#3db325"
    COLOR_MID_GREEN     =  "#1a8a54"
    COLOR_DARK_GREEN    =  "#0f5433"
    COLOR_YELLOW        =  "#b8bb26"
    COLOR_ORANGE        =  "#fabd2f"
    COLOR_PURPLE        =  "#744ee6"
    COLOR_PINK          =  "#9d84e8"
    COLOR_RED           =  "#fb4934"

  def print_json(full_text, min_width, color = nil, short_text = nil, align = "left", urgent = false)
    block = {}
    method(__method__).parameters.map do |p|
      name = p[1]
      value = eval("#{name}")
      block[name] = value if value != nil
    end

    puts JSON.generate(block)
  end

  module_function :print_json

end
