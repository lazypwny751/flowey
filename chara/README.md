# chara - characters

## Image optimization.

```sh
for f in *.png; do convert "$f" -resize 160x80\> -modulate 110,130,100 -contrast-stretch 0%x10% -sharpen 0x1.0 "$f"; done
```

## Chafa conversation.

```sh
#!/bin/bash

for img in *.png; do
    base="${img%.png}"
    outfile="$base"

    {
        echo "Meta:"
        echo "author = lazypwny751"
        echo
        echo "Context:"
        echo
        echo "Data:"
        chafa -c full --size=65x40 "$img"
    } > "${outfile}.flowey"

    echo "Created $outfile"
done
```
