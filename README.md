# ou-enrepo

English report at the Okayama University (Unofficial).

岡山大学での英語講義での提出用エッセイ/レポートのための非公式スタイル．

大体準拠しているはず．

## Usage

`example/repo.typ`を編集するところから始めましょう．

### Import

`ou-enrepo.typ`をダウンロードするかローカルにインストールしてください．

#### Download File

作成するドキュメントと同じフォルダに`ou-enrepo.typ`を配置し，先頭に追記します．

```typst
#import "ou-enrepo.typ": *
```

#### Local Install

`{data-dir}/typst/packages/local/ou-enrepo/0.1.0`の下にこのリポジトリのファイルを配置してください．
先頭に追記します．

```typst
#import "@local/ou-enrepo:0.1.0": *
```

### Call Style

`import`の後に配置します．

```typst
#show: enrepo.with(
  /// title
  title: "Main Title",
  subtitle: none,
  author: "HINSHIBA Death",

  /// format
  // size: 11pt,
  // font: "New Computer Modern",
  // paper: "a4",
)
```

## Changelog

### v0.1.0

初期リリース
