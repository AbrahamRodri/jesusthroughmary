defmodule JesusthroughmaryWeb.Router do
  use JesusthroughmaryWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {JesusthroughmaryWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JesusthroughmaryWeb do
    pipe_through :browser

    get "/", PageController, :home
    live "/apparitions", ApparitionLive.Index, :index
    live "/apparitions/banneux", ApparitionLive.Banneux, :show
    live "/apparitions/beauraing", ApparitionLive.Beauraing, :show
    live "/apparitions/fatima", ApparitionLive.Fatima, :show
    live "/apparitions/guadalupe", ApparitionLive.Guadalupe, :show
    live "/apparitions/hope", ApparitionLive.Hope, :show
    live "/apparitions/knock", ApparitionLive.Knock, :show
    live "/apparitions/la_salette", ApparitionLive.LaSalette, :show
    live "/apparitions/laus", ApparitionLive.Laus, :show
    live "/apparitions/lourdes", ApparitionLive.Lourdes, :show
    live "/apparitions/miraculous_medal", ApparitionLive.MiraculousMedal, :show

    live "/rosary", RosaryLive.Home, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", JesusthroughmaryWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:jesusthroughmary, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: JesusthroughmaryWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
