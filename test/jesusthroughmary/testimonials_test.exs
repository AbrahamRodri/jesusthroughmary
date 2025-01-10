defmodule Jesusthroughmary.TestimonialsTest do
  use Jesusthroughmary.DataCase

  alias Jesusthroughmary.Testimonials

  describe "testimonials" do
    alias Jesusthroughmary.Testimonials.Testimonial

    import Jesusthroughmary.TestimonialsFixtures

    @invalid_attrs %{message: nil, date: nil, title: nil, likes: nil}

    test "list_testimonials/0 returns all testimonials" do
      testimonial = testimonial_fixture()
      assert Testimonials.list_testimonials() == [testimonial]
    end

    test "get_testimonial!/1 returns the testimonial with given id" do
      testimonial = testimonial_fixture()
      assert Testimonials.get_testimonial!(testimonial.id) == testimonial
    end

    test "create_testimonial/1 with valid data creates a testimonial" do
      valid_attrs = %{message: "some message", date: ~N[2025-01-07 02:43:00], title: "some title", likes: 42}

      assert {:ok, %Testimonial{} = testimonial} = Testimonials.create_testimonial(valid_attrs)
      assert testimonial.message == "some message"
      assert testimonial.date == ~N[2025-01-07 02:43:00]
      assert testimonial.title == "some title"
      assert testimonial.likes == 42
    end

    test "create_testimonial/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Testimonials.create_testimonial(@invalid_attrs)
    end

    test "update_testimonial/2 with valid data updates the testimonial" do
      testimonial = testimonial_fixture()
      update_attrs = %{message: "some updated message", date: ~N[2025-01-08 02:43:00], title: "some updated title", likes: 43}

      assert {:ok, %Testimonial{} = testimonial} = Testimonials.update_testimonial(testimonial, update_attrs)
      assert testimonial.message == "some updated message"
      assert testimonial.date == ~N[2025-01-08 02:43:00]
      assert testimonial.title == "some updated title"
      assert testimonial.likes == 43
    end

    test "update_testimonial/2 with invalid data returns error changeset" do
      testimonial = testimonial_fixture()
      assert {:error, %Ecto.Changeset{}} = Testimonials.update_testimonial(testimonial, @invalid_attrs)
      assert testimonial == Testimonials.get_testimonial!(testimonial.id)
    end

    test "delete_testimonial/1 deletes the testimonial" do
      testimonial = testimonial_fixture()
      assert {:ok, %Testimonial{}} = Testimonials.delete_testimonial(testimonial)
      assert_raise Ecto.NoResultsError, fn -> Testimonials.get_testimonial!(testimonial.id) end
    end

    test "change_testimonial/1 returns a testimonial changeset" do
      testimonial = testimonial_fixture()
      assert %Ecto.Changeset{} = Testimonials.change_testimonial(testimonial)
    end
  end

  describe "testimonial_upvotes" do
    alias Jesusthroughmary.Testimonials.TestimonialUpvote

    import Jesusthroughmary.TestimonialsFixtures

    @invalid_attrs %{}

    test "list_testimonial_upvotes/0 returns all testimonial_upvotes" do
      testimonial_upvote = testimonial_upvote_fixture()
      assert Testimonials.list_testimonial_upvotes() == [testimonial_upvote]
    end

    test "get_testimonial_upvote!/1 returns the testimonial_upvote with given id" do
      testimonial_upvote = testimonial_upvote_fixture()
      assert Testimonials.get_testimonial_upvote!(testimonial_upvote.id) == testimonial_upvote
    end

    test "create_testimonial_upvote/1 with valid data creates a testimonial_upvote" do
      valid_attrs = %{}

      assert {:ok, %TestimonialUpvote{} = testimonial_upvote} = Testimonials.create_testimonial_upvote(valid_attrs)
    end

    test "create_testimonial_upvote/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Testimonials.create_testimonial_upvote(@invalid_attrs)
    end

    test "update_testimonial_upvote/2 with valid data updates the testimonial_upvote" do
      testimonial_upvote = testimonial_upvote_fixture()
      update_attrs = %{}

      assert {:ok, %TestimonialUpvote{} = testimonial_upvote} = Testimonials.update_testimonial_upvote(testimonial_upvote, update_attrs)
    end

    test "update_testimonial_upvote/2 with invalid data returns error changeset" do
      testimonial_upvote = testimonial_upvote_fixture()
      assert {:error, %Ecto.Changeset{}} = Testimonials.update_testimonial_upvote(testimonial_upvote, @invalid_attrs)
      assert testimonial_upvote == Testimonials.get_testimonial_upvote!(testimonial_upvote.id)
    end

    test "delete_testimonial_upvote/1 deletes the testimonial_upvote" do
      testimonial_upvote = testimonial_upvote_fixture()
      assert {:ok, %TestimonialUpvote{}} = Testimonials.delete_testimonial_upvote(testimonial_upvote)
      assert_raise Ecto.NoResultsError, fn -> Testimonials.get_testimonial_upvote!(testimonial_upvote.id) end
    end

    test "change_testimonial_upvote/1 returns a testimonial_upvote changeset" do
      testimonial_upvote = testimonial_upvote_fixture()
      assert %Ecto.Changeset{} = Testimonials.change_testimonial_upvote(testimonial_upvote)
    end
  end
end
