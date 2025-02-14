BEGIN {
print "<html><head><meta charset=\"utf-8\"><link href=\"mall.css\" rel=\"stylesheet\" type=\"text/css\"></head><body><table><tr><th>Year-Month-Day watched</th><th>Title</th><th>Bad < OK < Good < Great</th><th>Re-watch?</th></tr>"
}

{printf "<tr><td>%s</td><td>%s</td>", $1, $2}
$3 < 3 {printf "<td>bad<t/d>"}
$3 == 3 {printf "<td>ok</td>"}
$3 == 4 {printf "<td>good</td>"}
$3 == 5 { printf "<td>great</td>" }

{if ($4 == "Yes")
	printf "<td>%s</td></tr>\n", $4
else
	printf "</tr>\n"
}

END {
	print "</table></body></html>"
}