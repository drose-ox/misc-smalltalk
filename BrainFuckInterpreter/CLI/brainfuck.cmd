@echo off

if %1.==. goto NoFileSpecified

echo %1 > brainfuck.argv
vwntconsole -console -noherald -nosound -=brainfuck.im

goto ScriptEnd

:NoFileSpecified
	echo No file specified.
goto ScriptEnd

:ScriptEnd