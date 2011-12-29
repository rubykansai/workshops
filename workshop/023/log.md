- 純粋関数型言語Ruby(3) 30分でわかるMonad by 氏久(ujihisa)さん(logger: kmdsbng)
    - Monadとは
    - Monadの種類
    - Monadの使いかた、応用例
    - おまけ

    - Monadとは
        - モナドを、計算を合成して、より複雑な計算にする戦略 あるいは よりゆるい関数 あるいは 掛算みたいなもの
    - Monadの種類
        - Identity Monad
        - Maybe Monad
        - Error Monad
        - List Monad
        - IO Monad
        - State Monad
        - Reader Monad
        - Writer Monad
        - Continuation Monad
    - Monadの使いかた、応用例
        - Maybe Monad
            - ありがちなコード
`
g = (f1 && f2 && f3 && f4)
`
            - ifを使って書き直すと 
`
g = if f1
        if f2
            if f3
                f4
            end
        end
    end
`
            - nilチェックを加えるとこんな感じになりがち
`
    g = x != nil && x > 10 && x < 12
`

            - Maibe Monadを書き直すと
`
    f1 = lambda {|x| x.nil ? nil : x > 10 ? x : nil}
    f2 = lambda {|x| x.nil ? nil : x < 12 ? x : nil}
    g =lambda {|x| (a = f1[x]) && f2[a]}
`
        - IO Monad, Writer Monad, Reader Monad, State Monad
            - これらのモナドは副作用を扱うために使用する
            - 副作用とは
                - 入出力
                - 引数、戻り値以外の値の更新
        - IO Monad
            - 可換な演算子と、非可換な演算子
                - 1 + 2 == 2 + 1 
                - 1 * 2 == 2 * 1 
                    - ベクトルの計算だと非可換 
                - 1 &amp;&amp; 2 == 2 &amp;&amp; 1 
                    - 非可換 
            - 短絡評価
                - f1 && f2
                - f1 || f2
                - 順序をかえられない、変えたくないときに
                    - rubyだと
`
puts 'a'
puts 'b'
puts 'c'
`
                    - haskellだと
`
main = putStrLn "a" >> putStrLn "b" >> putStrLn "c"
`

        - Writer, Reader and State Monad
            - 関数の引数以外に参照できるデータ(=副値)を操作するためのモナド
                - rubyでの副値はインスタンス変数、クラス変数、グローバル変数、定数、ローカル変数、ObjectSpace.id2ref
            - Write Monad
                - 書き込み専用
            - Reader Monad
                - 読み取り専用
            - State Monad
                - 両方

    - Rubyによるモナドの実装
        - RushCheck
            - vim /opt/local/lib/ruby/gems/1.8/gems ... gen.rb
        - Monad Plus

    - モナドに関するニュース
        - 2/22 Haskell勉強会#9
        - 3/1 Haskell Hackathon 2008
        - rubyでも1.9からcurry実装されました
`
lambda {|x,y,z| x + y + z}.curry
`

- Rails以外のWebアプリケーションフレームワーク」 by yhara さん(logger: kmdsbng)
    - merb
        - stoyanはメルブと読むのでメルブ
        - railsより3倍速い
        - railsのように、MVC, 自動生成 / railsのpluginも使える!
        - new, simple(?)
    - camping
        - whytheluckystuff
        - 超軽量
        - MVC全部1ファイルとか、そういう用途
        - htmlメソッド, headメソッド, pメソッドとか狂ったView
        - Campingの変態的なところ
            - Why氏の作るアプリケーションはどこか必ず変態的なところがある
            - ルーティング
            - 継承の部分でRメソッドが…
        - コアが4キロバイト
            - ゴルフしてたー!!!
    - ramaze
        - ロゴにラマゼと書いてある
        - merbとcampingの中間くらいの軽量化
        - サーバもテンプレートもDBも自由

    - 設定ファイルで切り替え可能
        - ソースコードがキレイ
        - oメソッドwww

    - まとめ
        - それぞれ目的が違う
        - yharaオススメはrails

- Rubyのリフレクション by 大林さん(logger: kyara)
    - Rubyの黒魔術の紹介
    - Ruby1.8.6対象
    - リフレクションの基本的考え方
        - 大半の処理は実行時処理
        - 実行自前の処理は無理ｗ
            - 構文木(AST)は弄れない
            - Lispのマクロはない
        - リフレクションで使用するのはModule/Class, Objectクラスが中心
            - リファレンスを参照（大体出来ることがわかる）
    - 利用法
        - ライブラリ作成
        - Inner DSL
    - リフレクション機能概要
        - 変数、定数関連
            - innstance_variable_{set,get}
            - instance_variable_defined?
            - instance_variables
            - instance_...[etc]
            - ローカル変数
                - local_varialbes
            - グローバル変数
                - global_variables
                - trace_var
        - メソッド関係
            - Module#instance_methods
            - Object#methods
            - Object#singleton_methods
            - Module#method_defined?
            - Object#respond_to?
                - 継承したクラスを含める、含めない、特異メソッドだけ等
        - メソッド定義
            - Module#define_method
            - Module#{remove,undef}_method
            - Module#
        - クラス階層
            - Module#include
            - Object#extend・特異メソッドを追加
            - Classsuperclass
            - Module#include?
            - Module#ancestors
            - Object#is_a?
            - Module#===
        - eval関連
        - hook関連
            - Object#method_missing
            - Module#const_missing
            - Module#method_added
            - Module#method_{removed,undefined}
            - Module#included
            - Module#extended


    - リフレクション機能概要について大林さんから一言
        - 今までの話は忘れてもいいですｗ；
    - 特異クラスについて
        - あるオブジェクト固有のメソッド、クラス
        - 通常？クラス
`
class A < Object
end
a = A.new
`

            - 継承図
`
superclass↑
class⇒（参照）
      Object
       ↑
 a ⇒  A
`
        - 特異クラス

`
 a = A.new
 class << a
   def x
   end
 end
`
        - 特異メソッド
`
 a = A.new
 def a.x
 end
`
            - 継承図

`
 superclass↑
 class⇒（参照）
        Object
        ↑
 a⇒  (a) →  A
`

    - Module#define_method
        - 今回のテーマ（メソッド定義するメソッド）
            - 例題(ここで、実際にプログラムを組んでみる:logger力尽きたので略)
                - メソッドの作成
                    - モジュール・クラスにメソッドを定義
            - 更なる課題
                - ・initialize時にインスタンス変数を初期化
        - コツ
            - 必要な情報がどのクラスが持っているか、持たせるかを意識する
                - 小細工をするのにローカル変数が使える（ただメンドクサイ）
                - eval周りは仕様が変わるので注意が必要
    - 質問
        - Q:何所で調べるの？
        - A:リファレンス->IRB->想像力->Rubyハッキングガイド
        - Q:リファレクションを勉強するのに便利なライブラリは？（かずひこさんから）
        - A:特に思いつかない。特にこれといってない
