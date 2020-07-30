(* h2zKanaCB v.0.2.0
 * written: Sasaki Atsushi <https://github.com/hm7hm7>
 * last modified: 2020-07-30+09:00
 * reference: http://piyocast.com/as/archives/418
 *)

use scripting additions
use framework "Foundation"

property NSString : a reference to current application's NSString
property NSStringTransformFullwidthToHalfwidth : a reference to current application's NSStringTransformFullwidthToHalfwidth
property NSStringTransformHiraganaToKatakana : a reference to current application's NSStringTransformHiraganaToKatakana

-- ���p���S�p�ϊ�
on h2z(aStr as text)
	set aString to NSString's stringWithString:aStr
	return (aString's stringByApplyingTransform:(NSStringTransformFullwidthToHalfwidth) |reverse|:true) as string
end h2z

-- �S�p�����p�ϊ�
on z2h(aStr as text)
	set aString to NSString's stringWithString:aStr
	return (aString's stringByApplyingTransform:(NSStringTransformFullwidthToHalfwidth) |reverse|:false) as string
end z2h

-- �P���u��
on rp(str as text, tg as text, rp as text)
	set d to AppleScript's text item delimiters
	try
		set AppleScript's text item delimiters to tg
		set str to text items of str
		set AppleScript's text item delimiters to rp
		set str to str as text
	on error errMsg number errNum
		set AppleScript's text item delimiters to d
		error errNum & return & return & errMusg
	end try
	set AppleScript's text item delimiters to d
	return str
end rp

-- ���C������
on run
	set the clipboard to my main(the clipboard)
end run
on main(str)
	if class of (str) is string then
		set str to str as Unicode text
		
		-- ���p�J�i�̃��X�g���쐬����
		set hk to {}
		
		-- �B�u�v�A
		repeat with i from 65377 to 65380
			set hk to hk & character id i
		end repeat
		
		-- �J�i�A�����A�������i�ꕔ���p�J�i�̂Ȃ��������܂܂��j
		repeat with i from 12449 to 12540
			set hk to hk & character id i
		end repeat
		-- ���p�J�i�̃��X�g�̍쐬���I��
		
		-- ���X�g�ɂ��镶�������p��������S�p�ɕϊ�����
		repeat with i in hk
			set str to my rp(str, my z2h(i), my h2z(i))
		end repeat
		
		-- ���_�����_���������Ă����獇������
		return do shell script "echo " & quoted form of str & " | iconv -f UTF-8-MAC -t UTF-8"
	end if
end main

-- EOF
