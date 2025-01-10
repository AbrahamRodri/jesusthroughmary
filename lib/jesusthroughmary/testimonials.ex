defmodule Jesusthroughmary.Testimonials do
  @moduledoc """
  The Testimonials context.
  """

  import Ecto.Query, warn: false
  alias Jesusthroughmary.Repo

  alias Jesusthroughmary.Testimonials.Testimonial

  @doc """
  Returns the list of testimonials.

  ## Examples

      iex> list_testimonials()
      [%Testimonial{}, ...]

  """
  def list_testimonials do
    Repo.all(Testimonial)
  end

  @doc """
  Gets a single testimonial.

  Raises `Ecto.NoResultsError` if the Testimonial does not exist.

  ## Examples

      iex> get_testimonial!(123)
      %Testimonial{}

      iex> get_testimonial!(456)
      ** (Ecto.NoResultsError)

  """
  def get_testimonial!(id), do: Repo.get!(Testimonial, id)

  @doc """
  Creates a testimonial.

  ## Examples

      iex> create_testimonial(%{field: value})
      {:ok, %Testimonial{}}

      iex> create_testimonial(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_testimonial(attrs \\ %{}, user_id) do
    %Testimonial{}
    |> Testimonial.changeset(Map.put(attrs, "user_id", user_id))
    |> Repo.insert()
  end

  @doc """
  Updates a testimonial.

  ## Examples

      iex> update_testimonial(testimonial, %{field: new_value})
      {:ok, %Testimonial{}}

      iex> update_testimonial(testimonial, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_testimonial(%Testimonial{} = testimonial, attrs) do
    testimonial
    |> Testimonial.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a testimonial.

  ## Examples

      iex> delete_testimonial(testimonial)
      {:ok, %Testimonial{}}

      iex> delete_testimonial(testimonial)
      {:error, %Ecto.Changeset{}}

  """
  def delete_testimonial(%Testimonial{} = testimonial) do
    Repo.delete(testimonial)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking testimonial changes.

  ## Examples

      iex> change_testimonial(testimonial)
      %Ecto.Changeset{data: %Testimonial{}}

  """
  def change_testimonial(%Testimonial{} = testimonial, attrs \\ %{}) do
    Testimonial.changeset(testimonial, attrs)
  end

  alias Jesusthroughmary.Testimonials.TestimonialUpvote

  @doc """
  Returns the list of testimonial_upvotes.

  ## Examples

      iex> list_testimonial_upvotes()
      [%TestimonialUpvote{}, ...]

  """
  def list_testimonial_upvotes do
    Repo.all(TestimonialUpvote)
  end

  @doc """
  Gets a single testimonial_upvote.

  Raises `Ecto.NoResultsError` if the Testimonial upvote does not exist.

  ## Examples

      iex> get_testimonial_upvote!(123)
      %TestimonialUpvote{}

      iex> get_testimonial_upvote!(456)
      ** (Ecto.NoResultsError)

  """
  def get_testimonial_upvote!(id), do: Repo.get!(TestimonialUpvote, id)

  @doc """
  Creates a testimonial_upvote.

  ## Examples

      iex> create_testimonial_upvote(%{field: value})
      {:ok, %TestimonialUpvote{}}

      iex> create_testimonial_upvote(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_testimonial_upvote(attrs \\ %{}) do
    %TestimonialUpvote{}
    |> TestimonialUpvote.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a testimonial_upvote.

  ## Examples

      iex> update_testimonial_upvote(testimonial_upvote, %{field: new_value})
      {:ok, %TestimonialUpvote{}}

      iex> update_testimonial_upvote(testimonial_upvote, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_testimonial_upvote(%TestimonialUpvote{} = testimonial_upvote, attrs) do
    testimonial_upvote
    |> TestimonialUpvote.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a testimonial_upvote.

  ## Examples

      iex> delete_testimonial_upvote(testimonial_upvote)
      {:ok, %TestimonialUpvote{}}

      iex> delete_testimonial_upvote(testimonial_upvote)
      {:error, %Ecto.Changeset{}}

  """
  def delete_testimonial_upvote(%TestimonialUpvote{} = testimonial_upvote) do
    Repo.delete(testimonial_upvote)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking testimonial_upvote changes.

  ## Examples

      iex> change_testimonial_upvote(testimonial_upvote)
      %Ecto.Changeset{data: %TestimonialUpvote{}}

  """
  def change_testimonial_upvote(%TestimonialUpvote{} = testimonial_upvote, attrs \\ %{}) do
    TestimonialUpvote.changeset(testimonial_upvote, attrs)
  end
end
