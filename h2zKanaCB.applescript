(* h2zKanaCB v.0.1.0.1
 * written: Sasaki Atsushi <https://github.com/hm7hm7>
 * last modified: 2020-06-26+09:00
 *)

tell current application
	activate
	if class of (the clipboard) is string then
		set the clipboard to (do shell script "perl -e '

use Encode;
use Encode::JP::H2Z;

my $str=\"" & (the clipboard) & "\";

Encode::from_to($str, \"utf-8\", \"euc-jp\");
Encode::JP::H2Z::h2z(\\$str);
Encode::from_to($str, \"euc-jp\", \"utf-8\");

print $str, \"\\n\";

'")
	end if
end tell

-- EOF
