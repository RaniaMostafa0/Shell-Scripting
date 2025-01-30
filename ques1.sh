#!/bin/bash
usage() {
    echo "Usage: $0 [-a] [-n N] directory" 
    exit 1
}
show_all=false
default_entries=10
while getopts "an:" opt; do
    case ${opt} in
        a ) show_all=true ;;
        n ) default_entries=$OPTARG ;;
    esac
done
shift $((OPTIND -1))
if [ $# -eq 0 ]; then
    echo "Error, you must provide a directory as an argument" 1>&2
    usage
fi
for dir in "$@"; do
    if [ ! -d "$dir" ]; then
        echo "Error, $dir is not a directory" 1>&2
        continue
    fi
    if [ "$show_all" = true ]; then
        entries=$(du -ah "$dir" 2>/dev/null | sort -rh | head -n "$default_entries")
    else
        entries=$(du -h "$dir" 2>/dev/null | sort -rh | head -n "$default_entries")
    fi
    echo "$entries"
done
