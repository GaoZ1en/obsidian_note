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
	try

```