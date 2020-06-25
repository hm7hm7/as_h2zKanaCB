# h2zKanaCB v.0.1.0

クリップボードの半角カタカナを全角カタカナに変換する AppleScript。

変換処理は macOS にプリインストールの Perl、Encode モジュールで行なっており、AppleScript はクリップボードの入出力を行なっている。

クリップボードの中身がテキストでない場合は、何も処理されない。クリップボード内のテキストにスタイルが含まれている場合は、スタイルはなくなる（プレインテキストになる）。

## Reference

- [Perl で半角カナと全角カナの変換をする  :  Serendip &#8211; Webデザイン・プログラミング](https://www.serendip.ws/archives/2185)

## Licence

[MIT](LICENCE)

## Author

[Sasaki “se7en” Atsushi](https://github.com/hm7hm7)
