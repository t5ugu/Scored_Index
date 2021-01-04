# Scored Utility

誰にでも作れる程度のものなので, ライセンスはありません。  
見て学んでください。

## Get by Index
コマンド実行数は `4 * (配列の長さ - (インデックス % 配列の長さ)) + 7` です。

### 使い方
1. `su:index io.in.args` に配列を, `su:index io.in.index` にインデックスを入れる。
2. `function utils:get_by_index` を叩く。
3. `su:index io.out` に `配列のインデックス番目の要素` が入る。

## このdatapackが使うもの
* Scoreboard  
  * Objective
    * `_` ロード時に生成
  * Holder
    * `#temp` 内部で用いる
    * `#length` 内部で用いる
* Storage
  * `su` Scored Utilityの頭文字より
    * `index` Get by Indexで用いる
      * `io` ユーザーが操作する部分
        * `in`
          * `args` 配列を入れる
          * `index` インデックスを入れる
        * `out` 結果が入る
      * `temp`

一番初めに生成するときにMCDUを用いました。制作者の方に謝辞を。  
バグは気が向いたら探してつぶす予定です。
