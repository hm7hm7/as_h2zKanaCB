# h2zKanaCB v.0.2.0

クリップボードの半角カタカナを全角カタカナに変換する AppleScript。

変換対象の文字は、Perl の Encode::JP::H2Z モジュール v 2.2 に準ずる。

- カナ
- 句読点
- カギカッコ
- 中黒
- 音引き

クリップボードの中身がテキストでない場合は、何も処理されない。クリップボード内のテキストにスタイルが含まれている場合は、スタイルはなくなる（プレインテキストになる）。

## Reference

- [Perl で半角カナと全角カナの変換をする  :  Serendip &#8211; Webデザイン・プログラミング](https://www.serendip.ws/archives/2185)
- [文字種類変換（ASOC） – AppleScriptの穴](http://piyocast.com/as/archives/418)

## Licence

[MIT](./LICENCE)

## Author

[Sasaki “se7en” Atsushi](https://github.com/hm7hm7)
