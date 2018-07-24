dockerfiles=$(find 5.8.8 -name Dockerfile | sort)

for dockerfile in $dockerfiles; do
    dir=$(dirname $dockerfile)
    docker build -t motemen/perl:${dir//\//-} "$dir"
done
