# TrySwiftTableView
try! Swift で紹介された [FP + OOP + POP] なTableViewControllerサンプル

## 各commitの簡単な概要

commit | 概要
--- | ---
Old Table ViewController Style | 今までのよくある実装
Change class to struct | データソースをclassからstructへ
Eliminate mutable | structからmutatingを消し、新しいインスタンスを返す形にする
Move to a Custom Cell | セルの設定をセルのカスタムクラスへ移動
Take DataSource out of Table ViewController | DataSourceクラスを作成し、ViewControllerからデータソースを取り出す
Use SourceType Protocol | SourceType Protocolを作り、tableView操作を外出しする
Use DataType Protocol | DataType Protocolを作り、データソースのStructが操作可能であることを保障する
Pull out condition from DataSource | SourceType内にデータ追加時の条件（conditionForAdding）をプロトコルとして記述する形に変更する
More abstraction | DataSourceは継承して使う形とし、更にジェネリクスを用いることで多様なデータソースに対応できる汎用性を持たせる
