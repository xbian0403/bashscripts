#replace attr_read with attr_write in all the files match '.*write.*\.py' 
find . -regex '.*write.*\.py' | xargs sed -i '' 's/attr_read/attr_write/g'

#rename files of read to write
files=$(find . -regex '.*read.*')
for f in $files; do mv "$f" "$(echo "$f" | sed 's/read/write/g')"; done

# previous one may not work if it treat files as string instead of an array
find . -regex '.*read.*' | while read line; do
mv "$f" "$(echo "$f" | sed 's/read/write/g')";
done

#replace files content e.g change namespace
for f in $files; 
do 
sed 's/demdatagramtypes/dirgraphtypes/g' -i $f
sed 's/ddt/dgt/g' -i $f 
done
