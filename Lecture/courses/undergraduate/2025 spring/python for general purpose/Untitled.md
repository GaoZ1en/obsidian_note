```python
import argparse
import os
from PIL import Image, ImageColor

def parse_arguments():
	parser = argparse.ArgumentParser(description = "Resize images in a folder.")
	parser.add_argument("input_folder", default = "./output_files", help = "input files folder path")
	parser.add_argument("output_folder", help = "output files folder path")
	parser.add_argument("width", type = int, help = "output image width")
	parser.add_argument("height", type = int, help = "output image height")
	parser.add_argument("--background-color", default = "white", help = "background color (default: white)")
	parser.add_argument("--recursive", action = "store_true", help = "recursively resize images in subfolders"))
	parser.add_argument("--keep-aspect-ratio", action = "store_true", help = "keep aspect ratio")
	parser.add_argument("--filter", default = "bilinear", choices = ["nearest", "bilinear", "bicubic"], help = "filter for resizing (default: bilinear)"))
	return parser.parse_args()

def validate_color(color_str):
	try:
		return ImageColor.getrgb(color_str)
	except ValueError:
		raise ValueError(f"Invalid color value: {color_str}")

def main():
	args = parse_arguments()

	input_folder = os.path.abspath(args.input_folder)
	output_folder = os.path.abspath(args.output_folder)
	target_size = (args.width, args.height)
	keep_aspect_ratio = args.keep_aspect_ratio
	recursive = args.recursive
	background_color = validate_color(args.background_color)
	filter_method = getattr(Image, args.filter)
	valid_extensions = (".jpg", ".jpeg", ".png", ".bmp", ".gif")

	if not os.path.exists(input_folder):
    print(f"Input folder does not exist: {input_folder}")
    return

	os.makedirs(output_folder, exist_ok = True)

	for root, dirs, files in os.walk(input_folder):
		if not recursive:
			dirs[:] = []
		
    for file in files:
      if file.lower().endswith(valid_extensions):
        input_path = os.path.join(root, file)
        output_path = os.path.join(output_folder, os.path.relpath(input_path, input_folder))
        os.makedirs(os.path.dirname(output_path), exist_ok = True)

        with Image.open(input_path) as img:
          if keep_aspect_ratio:
            img.thumbnail(target_size, filter_method)
          else:
            img = img.resize(target_size, filter_method)

          img = img.convert("RGBA")
          background = Image.new("RGBA", img.size, background_color)
          img = Image.alpha_composite(background, img)
          img.save(output_path)


```
