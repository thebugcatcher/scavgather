defmodule Scavgather.QuestionTest do
  use Scavgather.ModelCase

  alias Scavgather.Question

  @valid_attrs %{answer: "some content", pic: "some content", prompt: "some content", reward: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Question.changeset(%Question{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Question.changeset(%Question{}, @invalid_attrs)
    refute changeset.valid?
  end
end
