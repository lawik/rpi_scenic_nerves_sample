use Mix.Config

config :mouse_for_nerves, :viewport, %{
  name: :main_viewport,
  # default_scene: {MouseForNerves.Scene.Crosshair, nil},
  default_scene: {MouseForNerves.Scene.SysInfo, nil},
  size: {800, 480},
  opts: [scale: 1.0],
  drivers: [
    %{
      module: Scenic.Driver.Glfw,
      opts: [title: "MIX_TARGET=host, app = :mouse_for_nerves"]
    }
  ]
}
