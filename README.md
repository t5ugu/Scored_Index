# Scored Index

誰にでも作れる程度のものなので, ライセンスはありません.  
見て学んでください.

コマンド実行数は `4 * (si:args.length - index) + 5` です.

## このdatapackが使うもの
* スコアボード  
  * スコアオブジェクティブ
    * `_` ロード時に生成
  * スコアホルダー
    * `index` 引数の値を入れる
    * `#repeat` 内部で用いる
    * `#count` 内部で用いる
* ストレージ
  * `si`
    * `args` 引数の値を入れる
    * `res` 返り値が入る
    * `temp` 内部で用いる

## 使い方
1. `si:args` に配列を, `index` に番号を入れる
2. `function scored_index:index` を叩く
3. `si:res` には `si:args[index]` が入る

生成にMCDUを用いました. 制作者の方に謝辞を.
バグは気が向いたら探してつぶす予定です.
