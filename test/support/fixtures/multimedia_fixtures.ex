defmodule TokoApp.MultimediaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TokoApp.Multimedia` context.
  """

  @doc """
  Generate a video.
  """
  def video_fixture(attrs \\ %{}) do
    {:ok, video} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title",
        url: "some url"
      })
      |> TokoApp.Multimedia.create_video()

    video
  end
end
