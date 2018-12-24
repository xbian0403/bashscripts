#replace attr_read with attr_write in all the files match '.*write.*\.py' 
find . -regex '.*write.*\.py' | xargs sed -i '' 's/attr_read/attr_write/g'

#rename files of read to write
files=$(find . -regex '.*read.*')
for f in $files; do mv "$f" "$(echo "$f" | sed 's/read/write/g')"; done
