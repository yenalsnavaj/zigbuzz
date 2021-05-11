# zigbuzz

Fizzbuzz in Zig! Three ways, which is fastest ?

Built using Zig 0.7.1 

```
zig build -Drelease-fast=true
```

Results (neeeds microsecond output ...)

```
zigbuzz/zig-cache/bin on  main [?] took 7s
❯ time ./single > /dev/null
./single > /dev/null  0.40s user 6.49s system 98% cpu 7.014 total
zigbuzz/zig-cache/bin on  main [?] took 7s
❯ time ./single > /dev/null
./single > /dev/null  0.40s user 6.59s system 99% cpu 7.025 total
zigbuzz/zig-cache/bin on  main [?] took 7s

❯ time ./double > /dev/null
./double > /dev/null  0.39s user 6.51s system 98% cpu 6.995 total
zigbuzz/zig-cache/bin on  main [?] took 6s
❯ time ./double > /dev/null
./double > /dev/null  0.41s user 6.54s system 98% cpu 7.037 total

zigbuzz/zig-cache/bin on  main [?] took 7s
❯ time ./arithmetic > /dev/null
./arithmetic > /dev/null  0.40s user 6.81s system 98% cpu 7.295 total
zigbuzz/zig-cache/bin on  main [?] took 7s
❯ time ./arithmetic > /dev/null
./arithmetic > /dev/null  0.40s user 7.00s system 99% cpu 7.435 total
zigbuzz/zig-cache/bin on  main [?] took 7s
```
