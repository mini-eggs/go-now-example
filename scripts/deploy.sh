index_files=(
    main
    zeit
)

for item in "${index_files[@]}"; do 
    cat $item.go | sed s/package\ main/package\ handler/ > $item.tmp
    mv $item.tmp $item.go
done

now