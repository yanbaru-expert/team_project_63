module ApplicationHelper
  def max_width
    if controller_name == "texts" && action_name == "show"
      "mw-md"
    elsif devise_controller?
      "mw-sm"
    else
      "mw-xl"
    end
  end

  def movies_heading
    if params[:genre] == "php"
      "PHP 動画"
    else
      "Ruby/Rails 動画"
    end
  end

  def texts_heading
    if params[:genre] == "php"
      "PHPテキスト教材"
    else
      "Ruby/Railsテキスト教材"
    end
  end
end
