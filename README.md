# terraform-gcp-tutorial

## はじめに

GCPの[無料利用枠](https://cloud.google.com/free/?hl=ja)がまだ残っていたので、以前から気になっていた[Terraform](https://www.terraform.io) を触ってみました。<br> まずはGCEインスタンスを作成することを目標に手を動かしてみます。

## 実行環境

PC
```
$ sw_vers
ProductName:	Mac OS X
ProductVersion:	10.14.6
BuildVersion:	18G95
```
terraform
```
$ terraform -v
Terraform v0.12.8
```

また今回 `.tf` ファイルを編集するためにVisual Studio Code + [Terraform拡張](https://marketplace.visualstudio.com/items?itemName=mauve.terraform) を使用しています。


## Install

#### macOS
[Homebrew](https://brew.sh/index_ja) でインストールしました。

```
$ brew install terraform
```

---

#### Windows

- 公式サイトからファイルをダウンロードし、インストール<br> [Terraformダウンロードサイト](https://www.terraform.io/downloads.html)

* [Chocolatey](https://chocolatey.org)を使用してインストール


## 内容

1. GCP上でtest用のプロジェクトを作成 (cloud shellを使用しました。)
```
$ gcloud projects create terraform-test-lab
```

ディレクトリ構成を初期化
```
$ terraform init
```

動作確認
```
$ terraform plan
```

変更の適用
```
$ terraform apply
```

## 今後のタスク

- 誤って認証情報をpushしないように何らかの対策は必要そう....<br>
(git-secretを使うとか)

- Instanceの詳細設定やその他GCPサービスの設定もTerraform経由で設定できるようにする。

- 設定ファイルの分割を試す。

- サービスアカウントの適切な権限についてちゃんと調べる。

## 参考Document
https://www.terraform.io/docs/providers/google/index.html

[Terraform CLI](https://www.terraform.io/docs/commands/index.html)

[Getting Started with the Google Provider](https://www.terraform.io/docs/providers/google/getting_started.html)