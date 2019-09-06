# terraform-gcp-tutorial

### はじめに

GCPの個人無料枠がまだ残っているので、インフラ会議で挙がっていた[Terraform](https://www.terraform.io) を触ってみました。まずはGCEインスタンスを作成することを目標に手を動かしてみます。

### 実行環境

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

### Install

[Homebrew](https://brew.sh/index_ja) でインストールしました。

```
$ brew install terraform
```

### 内容

①プロジェクトを作成 (cloud shellを使用しました。)
```
$ gcloud projects create terraform-test-lab
```

②

### 今後のタスク

* 誤って認証情報をpushしないように何らかの対策は必要そう....<br>
(git-secretを使うとか)

* Instanceの詳細設定やその他GCPサービスの設定もTerraform経由で設定できるようにする。

* サービスアカウントの適切な権限についてちゃんと調べる。

### 参考Document
https://www.terraform.io/docs/providers/google/index.html

[Getting Started with the Google Provider](https://www.terraform.io/docs/providers/google/getting_started.html)