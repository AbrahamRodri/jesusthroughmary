defmodule Jesusthroughmary.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Jesusthroughmary.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        content: "some content",
        date: ~N[2025-01-07 02:45:00]
      })
      |> Jesusthroughmary.Comments.create_comment()

    comment
  end
end
