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
end
