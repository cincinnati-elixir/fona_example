use Mix.Config

config :logger, backends: [RingLogger]

config :nerves, :firmware, rootfs_overlay: "rootfs_overlay"

config :nerves_firmware_ssh,
  authorized_keys: [
    File.read!(Path.join(System.user_home!, ".ssh/id_rsa.pub"))
  ]

config :shoehorn,
  init: [:nerves_runtime, :nerves_init_gadget],
  app: Mix.Project.config()[:app]

# import_config "#{Mix.Project.config[:target]}.exs"
