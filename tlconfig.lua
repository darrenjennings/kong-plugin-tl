return {
  gen_target = "5.1",
  include_dir = { "types" },
  source_dir = "src",
  build_dir = ".",
  preload_modules = {
    "types.resty",
    "types.kong"
	}
}
