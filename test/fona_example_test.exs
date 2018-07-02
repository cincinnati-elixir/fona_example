defmodule FonaExampleTest do
  use ExUnit.Case
  doctest FonaExample

  test "greets the world" do
    assert FonaExample.hello() == :world
  end
end
