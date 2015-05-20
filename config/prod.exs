use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, ElixirJobs.Endpoint,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "K9X9rQQIK1z+/pa5MNOd9kS6xO4GIqjEyZAsKiugVI9GrfoL9TikRlzEGloOslwvLU+2VxoSM1tx1sb7JHxMvg=="

config :logger,
  level: :info
