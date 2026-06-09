for file in *; do
    if [ -f "$file" ]; then
        # Ottieni il percorso assoluto del file
        absolute_path="$(pwd)/$file"
        
        # clickable link filename
        printf "\e]8;;file://%s\e\\%s\e]8;;\e\\\n" "$absolute_path" "$file"
    fi
done
