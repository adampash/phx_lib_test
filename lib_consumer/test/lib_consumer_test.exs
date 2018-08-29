defmodule LibConsumerTest do
  use ExUnit.Case
  doctest LibConsumer

  test "greets the world" do
    assert LibConsumer.hello() == :world
  end
end
