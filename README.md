# kensaku-command.vim

[![kensaku.vim plugin](https://img.shields.io/badge/plugin-kensaku.vim-lightgray.svg)](https://github.com/lambdalisue/kensaku.vim)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![vim help](https://img.shields.io/badge/vim-%3Ah%20kensaku--command-orange.svg)](doc/kensaku-command.jax)

_kensaku-command.vim_ は [lambdalisue/kensaku.vim][] を使ってローマ字による日本語検索を行う `:Kensaku` コマンドを提供するインテグレーションプラグインです。

なお、オリジナルは [haya14busa/vim-migemo][] の `:Migemo` コマンドで、このプラグインは簡易版を [lambdalisue/kensaku.vim][] を利用して提供しています。

[lambdalisue/kensaku.vim]: https://github.com/lambdalisue/kensaku.vim
[haya14busa/vim-migemo]: https://github.com/haya14busa/vim-migemo

## 必須条件

- [lambdalisue/kensaku.vim][lambdalisue/kensaku.vim]<br>CMigemo 非依存で Migemo
  を用いたローマ字による日本語検索機能を提供するためのプラグイン

## 利用方法

`:Kensaku` コマンドに対して以下のようにローマ字を含む検索ワードを指定します。

```
:Kensaku kensaku
```

検索結果をハイライトしたい場合は `'hlsearch'` オプションを参照してください。

## License

The code in this repository follows MIT license, texted in [LICENSE](./LICENSE).
Contributors need to agree that any modifications sent in this repository follow
the license.
