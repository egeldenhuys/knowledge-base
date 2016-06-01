Conky Align Columns
===================

Use `goto x` to align text.

`${goto x}`

Example:
```
NAME         ${goto 100}PID         ${goto 200}CPU%        ${goto 300}MEM%
${top name 1}${goto 100}${top pid 1}${goto 200}${top cpu 1}${goto 300}${top mem 1}
${top name 2}${goto 100}${top pid 2}${goto 200}${top cpu 2}${goto 300}${top mem 2}
${top name 3}${goto 100}${top pid 3}${goto 200}${top cpu 3}${goto 300}${top mem 3}
```

#### References
- [Answer by Gilles. (2011-01-02). "conky: proper column alignment" - stackexchange.com]
(https://unix.stackexchange.com/questions/5331/conky-proper-column-alignment)
