
## ログ
- Ruby 1.9 を語る by まつもとゆきひろ さん (logger: yhara)
  -  [「Ruby 1.9 を語る」 by まつもとゆきひろ - Ruby/Rails勉強会＠関西-21 - Greenbear Diary (2007-12-15)][http://mono.kmc.gr.jp/~yhara/d/?date=20071215#p03]

- Ruby3D プログラミング by kyara さん(logger: ohai)
    - 自己紹介
        - 組み込み屋(C,C++)
        - Rubyも使う
        - 今はワンセグとか
    - Call JavaAPI with JRuby
    - include Java
        - 必須
        - その後FQCN(完全修飾クラス名)で呼び出せる
    - include_class
        - 名前を取りこむ、FQCNが必要なくなる
        - importという名前でも使える
    - include_package
        - ClassもしくはModule内にpackageの名前を全部取り込む
    - 3D Programming with JRuby
        - 利点と欠点
            - Windowsでの導入のしやすさが利点 
            - DirectXやOpenGLよりマイナーなのは欠点
            - Javaでやったほうが簡単で高速
        - アプレットとして実行
            - ウインドウだけ
            - 回転する直方体
        - behavior使う
            - マウスで視点を移動
        - textureをはる
            - gif, jpg
        - geometryを使う
            - 基本的な幾何オブジェクトを描画できる
        - Bio?
            - モデラで作った3Dオブジェクトの表示
    - 質問
        - アプレットはどうなっている？
            - 微妙な状態
            - ライブラリからアプレット用のフレームは作れる
            - java bytecodeに変換できないのでブラウザからの表示はできない
            - JRuby 1.1ならできるかも

- Ruby 初級者向けレッスン第16回 by cuzic さん(logger: よしだあつし)
    - cuzicさんと森さんによるペアプロの芝居形式のペアプレだった。
    - 台本どおりらしく途中いかにもわざとらしいセリフがあったりして会場から笑いが起こっていた。
    - 今回のテーマは **今回は、みんながお世話になっているイテレータ（ブロック付メソッド呼び出し）の使い方** について一緒に学んでいきます。
    - ということで2～1000までの素数を出力するプログラムを例にしていたのだけれど <br/>
      2～1000までの数字の出力<br/>
      ↓<br/>
      数字の出力の部分に素数の判定をつける
      ↓<br/>
      アルゴリズムを改良して高速化<br/>
      という「プログラムの段階的改善」の実例みたいな感じがした。それはそれでプログラミング初級者レッスンとしては有意義な内容だけど…。
    - グループ分けをしていたのだけど、そのグループで何かをするようなことはなかった(時間がおしてたせい？)

- BioRuby と生命情報解析 by ngoto さん (logger : 石川)
    - bio-informatics とは生物学と情報科学との融合
    - CVS, repository は Openbio http://open-bio.org/ にある
    - BioPerl より20倍速い
    - DB も software も独自の format、統一されていない
        - parser を提供するのが BioRuby の目的の1つ
    - 学問の世界は英語の世界、英語の文書が足りない
        - site 訪問者は、文書がなかったら黙って使わなくなるだけ
    - 実験系研究者は PC が苦手
        - interactive な command interface 開発
    - ジャンパーを着ている人もいれば半袖の人もいる
        - アメリカっぽくていい (今回最もウケた部分)
    - Rails と連携して PC 苦手な人でも使いやすく
    - コドンの開始位置を調べるのは難しい (ATG が途中にも現れる)
    - Ruby に graph 構造 library が標準添付されてほしい
