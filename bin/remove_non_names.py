import argparse

parser = argparse.ArgumentParser(
    description="Remove those lines from --source which start with any of the strings in --non_names.")
parser.add_argument('--source',
                    help="Path to the input CSV file")
parser.add_argument('--non_names',
                    help="Path to the list of non_names",
                    default="")
args = parser.parse_args()

with open(args.non_names) as file:
    non_names = [f"{line.rstrip()}," for line in file]

with open(args.source) as source_file:
    for line in source_file:
        line = line.rstrip()
        matches = list(filter(line.startswith, non_names)) != []
        if not matches:
            print(line)