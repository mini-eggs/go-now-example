index_files=(
    main
    zeit
)

for item in "${index_files[@]}"; do 
    cat $item.go | sed s/package\ handler/package\ main/ > $item.tmp
    mv $item.tmp $item.go
done

gin