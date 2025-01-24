#!/bin/bash
# This file checks if there are same files in this repository using checksum

declare -A files

while IFS= read -r file; do
	if [ -f "$file" ] && [ ! -L "$file" ]; then
		if [[ $file != *.git* ]]; then
			hash=$(md5sum "$file" | cut -d' ' -f1)
			if [[ ${files[$hash]} ]]; then
				files[$hash]+=" $file"
			else
				files[$hash]="$file"
			fi
		fi
	fi
done < <(find . -type f)

for hash in "${!files[@]}"; do
	readarray -t files_array <<<"${files[$hash]}"
	echo "Identical files with MD5 sum $hash:"
	printf '  %s\n' "${files_array[@]}"
	echo
done
