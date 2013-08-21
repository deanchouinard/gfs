module ApplicationHelper
  def show_color_chart
    if (accurate_title.include? "Football")
      image_tag( 'football_colors.png', alt: 'Football Colors' )
    end
    # accurate_title
  end
end
