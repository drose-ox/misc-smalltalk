argvStream := 'brainfuck.argv' asFilename readStream.
argv := argvStream contents.
argvStream close.
interpreter := Oxiane.BrainFuck.BrainFuckInterpreter new.
interpreter srcCode: (argv asFilename readStream).
interpreter in: Stdin.
interpreter out: Stdout.
interpreter maxExecutionTime: 30000.
interpreter start.
ObjectMemory quit.