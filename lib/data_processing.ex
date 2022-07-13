defmodule DataProcessing do
  def get_csv(file_name\\"predaily00_rct.csv") do
    {:ok, binary} = File.read(file_name)
    [column | data] = String.split(binary, "\n")

    column = String.split(column, ",")

    data
    |> Enum.reject(fn d -> d == "" end)
    |> Enum.map(fn d ->
      Enum.zip(column, String.split(d, ","))
      |> Enum.into(%{})
    end)

    # data
    # |> Enum.reject(fn d -> d == "" end)
    # |> Enum.map(fn d -> String.split(d, ",") end)
    # |> Enum.map(fn d -> Enum.zip(column, d) end)
    # |> Enum.map(fn d -> Enum.into(d, %{}) end)
  end

  def filter_today_value(map_data) do
    Enum.filter(map_data, fn data ->
      value =
        case String.split(data["今日の値(mm)"], ".") do
          [_a, _b] -> data["今日の値(mm)"]
          [""] -> "0.0"
          [a] -> a <> ".0"
        end

      String.to_float(value) >= 10.0
    end)
  end
end
