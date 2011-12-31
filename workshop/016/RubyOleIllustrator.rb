#!/usr/bin/ruby -Ks
# 第16回 Ruby勉強会＠関西（運営：Ruby 関西） 
# 「丸投げシリーズ: Ruby ＋ Win32OLE ＋ Adobe Illustrator」 by 志村 (hs9587)
# $Id: RubyOleIllustrator.rb 2822 2007-06-18 13:26:11Z hs9587 $
# $Name$
Version = '0.0.1'
class Object; def display_n(out = $stdout); out.puts to_s; end; end

Content = Struct.new :message, :option, :type
Contents = [
  Content.new("Ruby勉強会\r＠関西"),
#=begin
#=end
  Content.new("第16回", 'font_size *= 1.7'),
  Content.new("丸投げ\rシリーズ:", 'font_size *= 1.2'),
  Content.new("Ruby +\rWin32OLE +\rIllustrator", 'font_size *= 1'),
# 折図作成、本の折り紙
  Content.new(" 今日の\r 流れ", 'font_size *= 1.2'),
  Content.new("実例\rはじまり\rコード", 'font_size *= 0.7'),
  Content.new("本の折り紙\r参考サイト\rもっとデモ", 'font_size *= 0.7'),
# つかみは紙で、A3じゃ小さいよね
  Content.new("デモ\rコンピューター\r本の折り紙", 'font_size *= 0.7'),
  Content.new("デモ\rリアル物\rA3用紙", 'font_size *= 0.7'),
# 名乗り、自己紹介
  Content.new("自己紹介", 'font_size *= 1.5'),
  Content.new(" 名前:\r  志村", 'font_size *= 1.2'),
# 印刷会社の、プログラマー
  Content.new("勤務先:\r欧文印刷\r株式会社", 'font_size *= 1'),
  Content.new("職種:\rプログラマー"),
  Content.new("あれ?", 'font_size *= 1.5'),
  Content.new("印刷会社\rプログラマー\r???"),
  Content.new("受発注\rシステム"),
  Content.new("自働組版", 'font_size *= 1.5'),
# 折り紙紹介、蛙、子猫、ちよ父、雪の結晶、
  Content.new("それは\rそれとして"),
  Content.new("折り紙", 'font_size *= 1.7'),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\chiyochichi.jpg', nil, :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\halo.2.4.jpg', nil, :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\halo.p.gif',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\snowcrystal.jpg',
    'left_margin = 0.05', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_3_kaeru.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_4_neko.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\hon_16p.jpg',
    'factor = 1; left_margin = 0.2', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\hon_16p_holiz.jpg',
    'factor = 1; left_margin = 0.2', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\hon_16p_vert.jpg',
    'factor = 1; left_margin = 0.2', :raster),
  Content.new("こんなこと\rやってるわけです\rRubyで", 'font_size *= 0.7'),
# 経緯、動物図鑑
  Content.new("はじまり", 'font_size *= 1.5'),
#  Content.new("2002年\r暮れ", 'font_size *= 1'),
  Content.new("少し前の\r事です", 'font_size *= 1.2'),
  Content.new("動物折紙", 'font_size *= 1.5'),
  Content.new("展開図", 'font_size *= 1.7'),
  Content.new("折り図", 'font_size *= 1.7'),
  Content.new("後工程\rのため", 'font_size *= 1.3'),
  Content.new("Adobe\rIllustrator\rが望ましい", 'font_size *= 1'),
  Content.new("後工程", 'font_size *= 1.7'),
#  Content.new("イラスト\rレーター\rさん", 'font_size *= 1'),
  Content.new("イラストレー\rターさん", 'font_size *= 1.1'),
  Content.new("デザイナー\rさん", 'font_size *= 1.1'),
  Content.new("Adobe\rIllustrator", 'font_size *= 1.1'),
  Content.new("ver.10から\rマクロ対応", 'font_size *= 1.1'),
  Content.new("  Apple\r  Script", 'font_size *= 1.2'),
  Content.new("  Java\r  Script", 'font_size *= 1.2'),
  Content.new("VB &\rVBScript", 'font_size *= 1.2'),
  Content.new("VBScript\r   !", 'font_size *= 1.5'),
  Content.new(" Win32\r OLE", 'font_size *= 1.3'),
  Content.new(" Ruby", 'font_size *= 2; color = @magenta'),
# そして
  Content.new(" 北野勇作\r どうぶつ\r 図鑑", 'font_size *= 1'),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_1_kame.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_2_tombo.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_3_kaeru.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_4_neko.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_5_zarigani.jpg',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\kitano_6_imori.jpg',
    'factor = 1; left_margin = 0.1', :raster),
#北野勇作どうぶつ図鑑（１～６）【ハヤカワ文庫JA】北野勇作 2003/4～2003/6, イラスト 西島大介 / デザイン 大塚ギチ
  Content.new("ハヤカワ\r文庫JA", 'font_size *= 1.2'),
  Content.new("北野勇作", 'font_size *= 1.5'),
  Content.new("イラスト\r西島大介", 'font_size *= 1.2'),
  Content.new("デザイン\r大塚ギチ", 'font_size *= 1.2'),
#  Content.new("(1) ISBN-4150307164 かめ\r(2) ISBN-4150307172 とんぼ\r(3) ISBN-4150307180 かえる\r(4) ISBN-4150307199 ねこ\r(5) ISBN-4150307245 ざりがに\r(6) ISBN-4150307253 いもり",
#    'font_size *= 0.3'),
## http://www.amazon.co.jp/exec/obidos/search-handle-url/250-1935471-9717829?%5Fencoding=UTF8&search-type=ss&index=books-jp&field-author=%E5%8C%97%E9%87%8E%20%E5%8B%87%E4%BD%9C
#=begin
#=end
# コード説明
  Content.new(" コード\r 説明", 'font_size *= 1.3'),
# このプレゼン
  Content.new("このプレゼン\r文書も", 'font_size *= 1'),
# # 線を引いたり、線を引いたり、
# # 一度これを終えてコード鑑賞
# 順にいろいろ、るびま的に
  Content.new("デモ\rこれを描いた\rRubyソース", 'font_size *= 0.7'),
# 最新、本の折り紙
  Content.new("Rubyで\r展開図", 'font_size *= 1.2'),
  Content.new("最新", 'font_size *= 2.0'),
  Content.new("本の\r折り紙", 'font_size *= 1.3'),
  Content.new("最初の\rデモ実演", 'font_size *= 1.2'),
# ブログ本のこと、サンプル企画
  Content.new("宣伝", 'font_size *= 1.5'),
#  Content.new("ブログ製本\rサービス\rMyBooks.jp"),
  Content.new("MyBooks.jp", 'font_size *= 1.1'),
  Content.new("ブログ製本\rサービス", 'font_size *= 1.2'),
  Content.new("WebObjects\r Java", 'font_size *= 1.1'),
  Content.new("その", 'font_size *= 1.8'),
  Content.new("サンプル\r企画", 'font_size *= 1.3'),
# まだプロトタイプだし、ぼつブログ
  Content.new("企画中", 'font_size *= 1.8'),
# http://botsu.jp/blog/2007/05/post_185.html
# http://botsu.jp/blog/2007/05/
  Content.new("ブログを投げるとPDFで\r展開図が返ってきて\r折り線に沿って折ると、\r折り紙の豆本のできあがり", 'font_size *= 0.5'),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\mybooks.gif',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new("こうできると\rいいな", 'font_size *= 1.2'),
# 参考リンク
  Content.new(" 参考\r サイト", 'font_size *= 1.3'),
## Win32OLE 活用法 【第 4 回】 Adobe Illustrator
## http://jp.rubyist.net/magazine/?0006-Win32OLE
  Content.new("Win32OLE 活用法\r 【第 4 回】 \rAdobe Illustrator", 'font_size *= 0.6'),
  Content.new("http://jp.rubyist\r.net/magazine/\r?0006-Win32OLE", 'font_size *= 0.6'),
## ActiveScriptRubyでIllustrator10
## http://www.geocities.co.jp/technopolis9587/rubyillustrator/memo.html
  Content.new("ActiveScriptRuby\rで\rIllustrator10", 'font_size *= 0.6'),
  Content.new("http://www.geocities\r.co.jp/technopolis9587\r/rubyillustrator\r/memo.html", 'font_size *= 0.5'),
## Adobe Illustrator SDK Scripting documentation
## http://partners.adobe.com/public/developer/illustrator/sdk/index_scripting.html
  Content.new("Adobe Illustrator\r SDK Scripting\r documentation", 'font_size *= 0.5'),
  Content.new("http://partners.adobe\r.com/public/developer\r/illustrator/sdk\r/index_scripting.html", 'font_size *= 0.5'),
## Illustrator10自動化作戦with JavaScript (単行本) 
## http://www.amazon.co.jp/exec/obidos/ASIN/4839913544/
  Content.new("Illustrator10\r自動化作戦\rwith JavaScript\r (単行本)", 'font_size *= 0.6'),
  Content.new("http://www.amazon\r.co.jp/exec/obidos\r/ASIN/4839913544/", 'font_size *= 0.6'),
## 【Illustrator CS自動化作戦】
## http://www.openspc2.org/book/IllustratorCS/
  Content.new("Illustrator\r CS\r 自動化作戦\r (サイト)", 'font_size *= 0.6'),
  Content.new("http://www.\ropenspc2.org/book\r/IllustratorCS/", 'font_size *= 0.6'),
## Adobe Illustrator CS2自動化作戦
## http://www.openspc2.org/book/IllustratorCS2/
  Content.new("Adobe \rIllustrator\r CS2 自動化作戦\r (サイト)", 'font_size *= 0.6'),
  Content.new("http://www.\ropenspc2.org/book\r/IllustratorCS2/", 'font_size *= 0.6'),
## イラレで便利 for Adobe Illustrator
## http://d-p.2-d.jp/ai-js/
  Content.new("イラレで便利\r for Adobe\r Illustrator", 'font_size *= 0.6'),
  Content.new(" http://d-p.2-d\r .jp/ai-js/", 'font_size *= 0.6'),
## s.h's page : Illustrator スクリプト (JavaScript) など
## http://park12.wakwak.com/~shp/lc/et/index.html
#  Content.new("s.h's page :\r Illustrator スクリプト\r (JavaScript) など", 'font_size *= 0.6'),
#  Content.new("http://park12.wakwak\r.com/~shp/lc/et\r/index.html", 'font_size *= 0.6'),
# ライブラリのこと
#  Content.new("それと", 'font_size *= 1.5'),
#  Content.new("自作の\rライブラリ", 'font_size *= 1.3'),
#  Content.new(" 使って\r ます", 'font_size *= 1.3'),
# おまけかな
# 雪の結晶
# マンボウはちょっとわかりにくいか
## ハロ実演 # 無理っぽい、旧ライブラリ依存
  Content.new("デモ\r雪の結晶", 'font_size *= 0.7'),
  Content.new("デモ\rマンボウ", 'font_size *= 0.7'),
  Content.new("おまけ", 'font_size *= 1.3'),
  Content.new("デモ\rLLDN\r計算機", 'font_size *= 0.7'),
  Content.new("デモ\rQAllDocs.js", 'font_size *= 0.7'),
# おしまい
  Content.new("おしまい", 'font_size *= 1.3'),
  Content.new("ご清聴\r感謝します", 'font_size *= 1.2'),
#=end
  ] # contents

require 'win32ole'
Size = Struct.new :width, :height

class Presentation
  module Constants
    Application = 'Illustrator.Application'
    CMYKColor = 'Illustrator.CMYKColor'
    A4 = Size.new 841.89, 595.28
    PresenSize = Size.new A4[0]/50, A4[1]/50
    ShiftFactor = 1.2
    FontSize = 3
    Font = 'HGPGothicE'
    # Verdana Tahoma Tahoma-Bold Rockwell Rockwell-Bold Myriad-Bold Georgia Georgia-Bold BookAntiqua
    EFont = 'Tahoma'
    EChars = %r[\A[a-zA-Z0-9'~_:&\?\s\+\-\.\/]*\Z]
    ImageFactor = 0.8
    Position = Struct.new :x, :y
    NotEnumerarionsTotal = Constants.constants.size + 1
  end # module Constants
  include Constants
  
  def initialize(contents, size = PresenSize)
    @contents = contents
    @size = size
    @margin = PresenSize.height/12
    
    begin # rescue WIN32OLERuntimeError => evar
      @illustrator = WIN32OLE.connect Application
      WIN32OLE::const_load @illustrator, Constants if Constants.constants.size == Constants::NotEnumerarionsTotal
      @document = @illustrator.Documents.Add AiDocumentCMYKColor, @size.width, @size.height
      @magenta = WIN32OLE.new CMYKColor
      @magenta.Cyan, @magenta.Magenta, @magenta.Yellow, @magenta.Black = 0,100,0,0
    rescue WIN32OLERuntimeError => evar then
      'WIN32OLERuntimeError:'.display_n $stderr
      evar.display_n $stderr
      evar.backtrace.display $stderr if $VERBOSE
      exit
    end # rescue WIN32OLERuntimeError => evar
    
    if block_given? then
      begin
        yield self
      ensure
        close
      end
    else# if block_given?
      return self
    end # if block_given?
  end # def initialize(contents)
  
  def close
    @document.Close AiDoNotSaveChanges
    nil
  end # def close
  
  def document_size
    bounds = @document.GeometricBounds
    height = bounds[1] - bounds[3] + @margin
    Size.new @size.width, height
  end # def document_size
  
  def run
    @contents.each do |content|
      # not implemented
    end # @contents.each do |content|
  end # def run
  
  def to_pdf
    position = Position.new 0, @size.height - @margin
    @contents.each do |content|
      content.type = :text unless content.type
      case content.type
        when :text then
          text_message content, position
        when :raster then
          raster_image content, position
        else
      end # case content.type
      position.y -= PresenSize.height * ShiftFactor
    end # @contents.each do |content|
  end # def to_pdf
  
  private
  def text_message(content, position)
    @document.Layers.Add.Name = content.message
    font_size = FontSize
    font = Font
    color = nil
    eval content.option if content.option
    text_art = @document.TextArtItems.Add
      text_art.Contents = content.message
      range = text_art.TextRange
        range.Size = font_size
        range.Font = font
        range.Words.each{ |word| word.Font = EFont if EChars =~ word.Contents }
        range.FillColor.CMYK = color if color
        range.StrokeColor.CMYK = color if color
      text_art.Position = position.to_a
  end # def text_message(content, position)
  
  def raster_image(content, position)
    @document.Layers.Add.Name = File.basename content.message
    factor = ImageFactor
    left_margin = 1 - ImageFactor
    eval content.option if content.option
    raster = @document.RasterItems.Add
      raster.File = content.message
      raster_factor = PresenSize.height/raster.Height * factor
      raster.Height *= raster_factor
      raster.Width *= raster_factor
      x = PresenSize.width * left_margin
      raster.Position = [position.x + x, position.y]
  end # def raster_image(content, position)
end # class Presentation

require 'optparse'
mode = :pdf
size = Presentation::PresenSize
fname = 'RubyOlellustrator.pdf'
resize = false
sizefname = 'sizes.txt'
ARGV.options do |opt|
  opt.on '--run', 'presentation mode: not implemented'
  opt.on '--pdf', 'flat PDF mode and save PDF', proc { mode = :pdf }
  opt.on '--pdfname=NAME',
    "PDF filename, default: #{fname}", proc { |v| fname = v }
  opt.on '--resize', 'resize artboard from sizefname', proc { resize = true }
  opt.on '--sizefname=NAME',
    "Artboard size file name, default: #{sizefname}", proc { |v| sizefname = v }
  
  begin # rescue OptionParser::ParseError => evar
    opt.parse!
  rescue OptionParser::ParseError => evar then
    evar.class.display_n $stderr
    evar.display_n $stderr
    exit
  end # rescue OptionParser::ParseError => evar
end # ARGV.optrions do |opt|

if $0 == __FILE__ or %r{RSC[0-9A-Z]+\.tmp\.rb\Z} =~ __FILE__ then
  if resize then
    (size = Size.new *File.readlines(sizefname).map{ |l| l.chomp.to_f }) rescue nil
  end # if resize
  
  Presentation.new(Contents, size) do |presentation|
    case mode
      when :pdf then
        presentation.to_pdf
        #presentation.save fname
      else
    end # case mode
    
    ('PRESS ENTER'.display; gets) if $VERBOSE
    
    File.open(sizefname, 'w') do |f|
      presentation.document_size.each{ |v| v.display_n f }
    end if :pdf == mode
  end # Presentation.new(Contents) do |presentation|
end # if $0 == __FILE__ or %r{RSC[0-9A-Z]+\.tmp\.rb\Z} =~ __FILE__
