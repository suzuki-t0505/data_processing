# Elixir研修2022 6日目-追加演習

## 演習1
mix new で新しいプロジェクトを作成してください。  
使用したファイルの配布元：[https://www.data.go.jp/data/dataset/mlit_20140919_0726](https://www.data.go.jp/data/dataset/mlit_20140919_0726)  
配布したファイルをプロジェクトに移動してください。
配布したcsvファイルを読み込み、以下のような形にする関数を作成してください。

```elixir
[
  %{
      "10年未満での極値更新" => "",
      "今日の値(mm)" => "0.0",
      "今日の値の品質情報" => "4",
      "国際地点番号" => "",
      "地点" => "宗谷岬（ソウヤミサキ）",
      "昨日までの7月の1位の値(mm)" => "115.5",
      "昨日までの7月の1位の値の品質情報" => "8",
      "昨日までの7月の1位の値の年" => "2015",
      "昨日までの7月の1位の値の日" => "13",
      "昨日までの7月の1位の値の月" => "07",
      "昨日までの観測史上1位の値(mm)" => "143.0",
      "昨日までの観測史上1位の値の品質情報" => "8",
      "昨日までの観測史上1位の値の年" => "2020",
      "昨日までの観測史上1位の値の日" => "07",
      "昨日までの観測史上1位の値の月" => "08",
      "極値更新" => "",
      "現在時刻(分)" => "00",
      "現在時刻(年)" => "2022",
      "現在時刻(日)" => "13",
      "現在時刻(時)" => "13",
      "現在時刻(月)" => "07",
      "統計開始年" => "1978",
      "観測所番号" => "11001",
      "都道府県" => "北海道 宗谷地方"
    },
    （省略）
]
```

## 演習2
演習1でデータを加工した値を利用して「今日の値(mm)」の値が10.0以上のものだけを返す関数を作成してください。
