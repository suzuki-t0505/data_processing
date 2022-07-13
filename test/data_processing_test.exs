defmodule DataProcessingTest do
  use ExUnit.Case
  doctest DataProcessing

  test "greets the world" do
    assert DataProcessing.hello() == :world
  end
end
