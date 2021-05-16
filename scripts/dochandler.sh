
#!/bin/bash
mkdir -p {assignments,cs,large_files}
find . -maxdepth 1 -type f -iname "*chn*.pdf" -exec mv {} ./assignments/ \;
find . -maxdepth 1 -type f \( -iname "*cs*.pdf" -o -iname "*s5*.pdf" \) -exec mv {} ./cs/ \;
find . -maxdepth 1 -type f -size +20M -exec mv {} ./large_files/ \;
echo Done
