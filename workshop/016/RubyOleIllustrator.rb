#!/usr/bin/ruby -Ks
# ��16�� Ruby�׋���֐��i�^�c�FRuby �֐��j 
# �u�ۓ����V���[�Y: Ruby �{ Win32OLE �{ Adobe Illustrator�v by �u�� (hs9587)
# $Id: RubyOleIllustrator.rb 2822 2007-06-18 13:26:11Z hs9587 $
# $Name$
Version = '0.0.1'
class Object; def display_n(out = $stdout); out.puts to_s; end; end

Content = Struct.new :message, :option, :type
Contents = [
  Content.new("Ruby�׋���\r���֐�"),
#=begin
#=end
  Content.new("��16��", 'font_size *= 1.7'),
  Content.new("�ۓ���\r�V���[�Y:", 'font_size *= 1.2'),
  Content.new("Ruby +\rWin32OLE +\rIllustrator", 'font_size *= 1'),
# �ܐ}�쐬�A�{�̐܂莆
  Content.new(" ������\r ����", 'font_size *= 1.2'),
  Content.new("����\r�͂��܂�\r�R�[�h", 'font_size *= 0.7'),
  Content.new("�{�̐܂莆\r�Q�l�T�C�g\r�����ƃf��", 'font_size *= 0.7'),
# ���݂͎��ŁAA3���Ꮼ�������
  Content.new("�f��\r�R���s���[�^�[\r�{�̐܂莆", 'font_size *= 0.7'),
  Content.new("�f��\r���A����\rA3�p��", 'font_size *= 0.7'),
# �����A���ȏЉ�
  Content.new("���ȏЉ�", 'font_size *= 1.5'),
  Content.new(" ���O:\r  �u��", 'font_size *= 1.2'),
# �����Ђ́A�v���O���}�[
  Content.new("�Ζ���:\r�������\r�������", 'font_size *= 1'),
  Content.new("�E��:\r�v���O���}�["),
  Content.new("����?", 'font_size *= 1.5'),
  Content.new("������\r�v���O���}�[\r???"),
  Content.new("�󔭒�\r�V�X�e��"),
  Content.new("�����g��", 'font_size *= 1.5'),
# �܂莆�Љ�A�^�A�q�L�A���敃�A��̌����A
  Content.new("�����\r����Ƃ���"),
  Content.new("�܂莆", 'font_size *= 1.7'),
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
  Content.new("����Ȃ���\r����Ă�킯�ł�\rRuby��", 'font_size *= 0.7'),
# �o�܁A�����}��
  Content.new("�͂��܂�", 'font_size *= 1.5'),
#  Content.new("2002�N\r���", 'font_size *= 1'),
  Content.new("�����O��\r���ł�", 'font_size *= 1.2'),
  Content.new("�����܎�", 'font_size *= 1.5'),
  Content.new("�W�J�}", 'font_size *= 1.7'),
  Content.new("�܂�}", 'font_size *= 1.7'),
  Content.new("��H��\r�̂���", 'font_size *= 1.3'),
  Content.new("Adobe\rIllustrator\r���]�܂���", 'font_size *= 1'),
  Content.new("��H��", 'font_size *= 1.7'),
#  Content.new("�C���X�g\r���[�^�[\r����", 'font_size *= 1'),
  Content.new("�C���X�g���[\r�^�[����", 'font_size *= 1.1'),
  Content.new("�f�U�C�i�[\r����", 'font_size *= 1.1'),
  Content.new("Adobe\rIllustrator", 'font_size *= 1.1'),
  Content.new("ver.10����\r�}�N���Ή�", 'font_size *= 1.1'),
  Content.new("  Apple\r  Script", 'font_size *= 1.2'),
  Content.new("  Java\r  Script", 'font_size *= 1.2'),
  Content.new("VB &\rVBScript", 'font_size *= 1.2'),
  Content.new("VBScript\r   !", 'font_size *= 1.5'),
  Content.new(" Win32\r OLE", 'font_size *= 1.3'),
  Content.new(" Ruby", 'font_size *= 2; color = @magenta'),
# ������
  Content.new(" �k��E��\r �ǂ��Ԃ�\r �}��", 'font_size *= 1'),
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
#�k��E��ǂ��Ԃ}�Ӂi�P�`�U�j�y�n���J������JA�z�k��E�� 2003/4�`2003/6, �C���X�g ������� / �f�U�C�� ��˃M�`
  Content.new("�n���J��\r����JA", 'font_size *= 1.2'),
  Content.new("�k��E��", 'font_size *= 1.5'),
  Content.new("�C���X�g\r�������", 'font_size *= 1.2'),
  Content.new("�f�U�C��\r��˃M�`", 'font_size *= 1.2'),
#  Content.new("(1) ISBN-4150307164 ����\r(2) ISBN-4150307172 �Ƃ��\r(3) ISBN-4150307180 ������\r(4) ISBN-4150307199 �˂�\r(5) ISBN-4150307245 ���肪��\r(6) ISBN-4150307253 ������",
#    'font_size *= 0.3'),
## http://www.amazon.co.jp/exec/obidos/search-handle-url/250-1935471-9717829?%5Fencoding=UTF8&search-type=ss&index=books-jp&field-author=%E5%8C%97%E9%87%8E%20%E5%8B%87%E4%BD%9C
#=begin
#=end
# �R�[�h����
  Content.new(" �R�[�h\r ����", 'font_size *= 1.3'),
# ���̃v���[��
  Content.new("���̃v���[��\r������", 'font_size *= 1'),
# # ������������A������������A
# # ��x������I���ăR�[�h�ӏ�
# ���ɂ��낢��A��тܓI��
  Content.new("�f��\r�����`����\rRuby�\�[�X", 'font_size *= 0.7'),
# �ŐV�A�{�̐܂莆
  Content.new("Ruby��\r�W�J�}", 'font_size *= 1.2'),
  Content.new("�ŐV", 'font_size *= 2.0'),
  Content.new("�{��\r�܂莆", 'font_size *= 1.3'),
  Content.new("�ŏ���\r�f������", 'font_size *= 1.2'),
# �u���O�{�̂��ƁA�T���v�����
  Content.new("��`", 'font_size *= 1.5'),
#  Content.new("�u���O���{\r�T�[�r�X\rMyBooks.jp"),
  Content.new("MyBooks.jp", 'font_size *= 1.1'),
  Content.new("�u���O���{\r�T�[�r�X", 'font_size *= 1.2'),
  Content.new("WebObjects\r Java", 'font_size *= 1.1'),
  Content.new("����", 'font_size *= 1.8'),
  Content.new("�T���v��\r���", 'font_size *= 1.3'),
# �܂��v���g�^�C�v�����A�ڂu���O
  Content.new("��撆", 'font_size *= 1.8'),
# http://botsu.jp/blog/2007/05/post_185.html
# http://botsu.jp/blog/2007/05/
  Content.new("�u���O�𓊂����PDF��\r�W�J�}���Ԃ��Ă���\r�܂���ɉ����Đ܂�ƁA\r�܂莆�̓��{�̂ł�������", 'font_size *= 0.5'),
  Content.new('C:\Documents and Settings\hs9587\My Documents\My Pictures\mybooks.gif',
    'factor = 1; left_margin = 0.1', :raster),
  Content.new("�����ł����\r������", 'font_size *= 1.2'),
# �Q�l�����N
  Content.new(" �Q�l\r �T�C�g", 'font_size *= 1.3'),
## Win32OLE ���p�@ �y�� 4 ��z Adobe Illustrator
## http://jp.rubyist.net/magazine/?0006-Win32OLE
  Content.new("Win32OLE ���p�@\r �y�� 4 ��z \rAdobe Illustrator", 'font_size *= 0.6'),
  Content.new("http://jp.rubyist\r.net/magazine/\r?0006-Win32OLE", 'font_size *= 0.6'),
## ActiveScriptRuby��Illustrator10
## http://www.geocities.co.jp/technopolis9587/rubyillustrator/memo.html
  Content.new("ActiveScriptRuby\r��\rIllustrator10", 'font_size *= 0.6'),
  Content.new("http://www.geocities\r.co.jp/technopolis9587\r/rubyillustrator\r/memo.html", 'font_size *= 0.5'),
## Adobe Illustrator SDK Scripting documentation
## http://partners.adobe.com/public/developer/illustrator/sdk/index_scripting.html
  Content.new("Adobe Illustrator\r SDK Scripting\r documentation", 'font_size *= 0.5'),
  Content.new("http://partners.adobe\r.com/public/developer\r/illustrator/sdk\r/index_scripting.html", 'font_size *= 0.5'),
## Illustrator10���������with JavaScript (�P�s�{) 
## http://www.amazon.co.jp/exec/obidos/ASIN/4839913544/
  Content.new("Illustrator10\r���������\rwith JavaScript\r (�P�s�{)", 'font_size *= 0.6'),
  Content.new("http://www.amazon\r.co.jp/exec/obidos\r/ASIN/4839913544/", 'font_size *= 0.6'),
## �yIllustrator CS���������z
## http://www.openspc2.org/book/IllustratorCS/
  Content.new("Illustrator\r CS\r ���������\r (�T�C�g)", 'font_size *= 0.6'),
  Content.new("http://www.\ropenspc2.org/book\r/IllustratorCS/", 'font_size *= 0.6'),
## Adobe Illustrator CS2���������
## http://www.openspc2.org/book/IllustratorCS2/
  Content.new("Adobe \rIllustrator\r CS2 ���������\r (�T�C�g)", 'font_size *= 0.6'),
  Content.new("http://www.\ropenspc2.org/book\r/IllustratorCS2/", 'font_size *= 0.6'),
## �C�����ŕ֗� for Adobe Illustrator
## http://d-p.2-d.jp/ai-js/
  Content.new("�C�����ŕ֗�\r for Adobe\r Illustrator", 'font_size *= 0.6'),
  Content.new(" http://d-p.2-d\r .jp/ai-js/", 'font_size *= 0.6'),
## s.h's page : Illustrator �X�N���v�g (JavaScript) �Ȃ�
## http://park12.wakwak.com/~shp/lc/et/index.html
#  Content.new("s.h's page :\r Illustrator �X�N���v�g\r (JavaScript) �Ȃ�", 'font_size *= 0.6'),
#  Content.new("http://park12.wakwak\r.com/~shp/lc/et\r/index.html", 'font_size *= 0.6'),
# ���C�u�����̂���
#  Content.new("�����", 'font_size *= 1.5'),
#  Content.new("�����\r���C�u����", 'font_size *= 1.3'),
#  Content.new(" �g����\r �܂�", 'font_size *= 1.3'),
# ���܂�����
# ��̌���
# �}���{�E�͂�����Ƃ킩��ɂ�����
## �n������ # �������ۂ��A�����C�u�����ˑ�
  Content.new("�f��\r��̌���", 'font_size *= 0.7'),
  Content.new("�f��\r�}���{�E", 'font_size *= 0.7'),
  Content.new("���܂�", 'font_size *= 1.3'),
  Content.new("�f��\rLLDN\r�v�Z�@", 'font_size *= 0.7'),
  Content.new("�f��\rQAllDocs.js", 'font_size *= 0.7'),
# �����܂�
  Content.new("�����܂�", 'font_size *= 1.3'),
  Content.new("������\r���ӂ��܂�", 'font_size *= 1.2'),
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
