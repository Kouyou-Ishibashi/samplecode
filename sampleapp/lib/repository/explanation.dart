// ビジネスロジックの役割を持つクラスを管理します。
// infrastructureに定義したAPIクライアントでAPIなどでデータをCRUDする関数を呼び出します。
// Repositoryで定義した関数はViewModelから呼び出すようにしています。
// 基本的にはXxxxxRepostioryというabstract classを作り、別途それを実装したクラスXxxxxRepostioryImplを作ることが多いです。
// 上記はUTのしやすさを考慮しているためです。