# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate()
    return @win.to_f / (@win+@lose)
  end
  
  def show_team_result()
    p "#{@name}の2020年の成績は#{@win}勝#{@lose}敗#{@draw}分、勝率は#{self.calc_win_rate} です。"
  end
end

# インスタンスの生成と、変数への代入
Team1 = Team.new("Giants", 67, 45, 8)
Team2 = Team.new("Tigers", 60, 53, 7)
Team3 = Team.new("Dragons", 60, 55, 5)
Team4 = Team.new("BayStars", 56, 58, 6)
Team5 = Team.new("Carp", 52, 56, 12)
Team6 = Team.new("Swallows", 41, 69, 10)

# インスタンスの使用
Team1.show_team_result()
Team2.show_team_result()
Team3.show_team_result()
Team4.show_team_result()
Team5.show_team_result()
Team6.show_team_result()