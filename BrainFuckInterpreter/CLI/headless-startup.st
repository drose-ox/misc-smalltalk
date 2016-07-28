argvStream := 'brainfuck.argv' asFilename readStream.
argv := argvStream contents.
argvStream close.
interpreter := Oxiane.BrainFuck.BrainFuckInterpreter new.
interpreter srcCode: (argv asFilename readStream).
interpreter in: Stdin.
interpreter out: Stdout.
interpreter maxExecutionTime: 30000.
[interpreter start]
	on: Oxiane.BrainFuck.BrainFuckError
	do: [ :e |
		Stdout flush.
		Stdout close.
		Stderr nextPutAll: 'An error was raised: ', (e errorString).
		Stderr flush.
		Stderr close.
	].
ObjectMemory quit.