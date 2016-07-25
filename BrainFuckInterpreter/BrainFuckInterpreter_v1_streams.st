<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.1.1 of 10 mars 2016 on 25 juillet 2016 at 15:04:05</time-stamp>


<class>
<name>BrainFuckExecutionTimeout</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<comment>
<class-id>BrainFuckExecutionTimeout</class-id>
<body>BrainFuckExecutionTimeout is raised when the program runs for longer than the maximum time expected.</body>
</comment>

<methods>
<class-id>BrainFuckExecutionTimeout</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<class>
<name>BrainFuckInputError</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>BrainFuckInputError class</class-id> <category>testing</category>

<body package="BrainFuck" selector="mayResume">mayResume	^true</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckInputError</class-id>
<body>BrainFuckInputError is raised when the BrainFuckInterpreter can not read or block on stdin.</body>
</comment>

<methods>
<class-id>BrainFuckInputError</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<class>
<name>BrainFuckInterpreter</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>stdin stdout source status memory memPtr srcStream loopDepth currentInstruction debugMode startTime </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>BrainFuckInterpreter class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^super new initialize</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckInterpreter</class-id>
<body>Interpretes BrainFuck code.Instance Variables:	source			&lt;String&gt;				BrainFuck source code	stdin			&lt;ReadWriteStream&gt;	description of stdin	stdout			&lt;ReadWriteStream&gt;	description of stdout	status			&lt;Symbol&gt;			indicates wether the BrainFuck program is notStarted, started, or completed	memory			&lt;ByteArray&gt;			BrainFuck machine memory	memPtr			&lt;Integer&gt;			BrainFuck machine memory pointer	srcStream		&lt;ReadStream&gt;		private BrainFuck source code represented as a stream	loopDepth		&lt;Integer&gt;			private Depth in loops of current instruction	currentInstruction &lt;Character&gt;			private Current BrainFuck instruction to execute (one of &gt;&lt;+-[],.#)	debugMode		&lt;Boolean&gt;			indicates wether the debug mode is active or not	startTime			&lt;Integer&gt;			timestamp in milliseconds at which time the BrainFuck program was last started.</body>
</comment>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	super initialize.	stdin := ReadWriteStream on: String new.	stdout := ReadWriteStream on: String new.	memory := nil.	memPtr := 1.	source := ''.	status := #notStarted.	debugMode := false.	^self</body>
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>accessing</category>

<body package="BrainFuck" selector="debugMode">debugMode	^debugMode</body>

<body package="BrainFuck" selector="debugMode:">debugMode: anObject	debugMode := anObject</body>

<body package="BrainFuck" selector="memPtr">memPtr	^memPtr</body>

<body package="BrainFuck" selector="memPtr:">memPtr: anObject	memPtr := anObject</body>

<body package="BrainFuck" selector="memory">memory	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^memory</body>

<body package="BrainFuck" selector="memory:">memory: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	memory := t1.	^self</body>

<body package="BrainFuck" selector="source">source	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^source</body>

<body package="BrainFuck" selector="source:">source: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	source := t1.	^self</body>

<body package="BrainFuck" selector="status">status	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^status</body>

<body package="BrainFuck" selector="status:">status: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	status := t1.	^self</body>

<body package="BrainFuck" selector="stdin">stdin	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^stdin</body>

<body package="BrainFuck" selector="stdin:">stdin: t1 	(t1 isKindOf: String)		ifTrue: [stdin := (ReadWriteStream on: String new) nextPutAll: t1; reset]		ifFalse: [stdin := t1].	^self</body>

<body package="BrainFuck" selector="stdout">stdout	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^stdout</body>

<body package="BrainFuck" selector="stdout:">stdout: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	stdout := t1.	^self</body>
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>interpreter</category>

<body package="BrainFuck" selector="debug">debug	Transcript show: 'Position within code (starting from 1): ', (srcStream position printString); cr		; show: 'Pointer (starting from 1): ', memPtr printString; cr		; show: 'Value at pointer: ', (memory at: memPtr) printString; cr.	self halt.	^self</body>

<body package="BrainFuck" selector="executeInstruction">executeInstruction	| now |	now := Date dateAndTimeNow.	now := (now at: 1) asMilliseconds + (now at: 2) asMilliseconds.	now - startTime &gt; (self maxExecutionTimeInMs) ifTrue: [BrainFuckExecutionTimeout raise].	currentInstruction == $+ ifTrue: [self incrementValueAtPointer].	currentInstruction == $- ifTrue: [self decrementValueAtPointer].	currentInstruction == $&gt; ifTrue: [self incrementPointer].	currentInstruction == $&lt; ifTrue: [self decrementPointer].	currentInstruction == $. ifTrue: [self outputCharacterAtPointer].	currentInstruction == $, ifTrue: [self readCharacterIntoPointer].	currentInstruction == $[ ifTrue: [self beginLoop].	currentInstruction == $] ifTrue: [self endLoop].	(currentInstruction == $# and: [debugMode]) ifTrue: [self debug]</body>

<body package="BrainFuck" selector="start">start	startTime := Date dateAndTimeNow.	startTime := (startTime at: 1) asMilliseconds + (startTime at: 2) asMilliseconds.	status := #started.	memory := ByteArray new: self memorySize.	loopDepth := 0.	srcStream := source readStream.	[(currentInstruction := srcStream next) notNil] whileTrue: [self executeInstruction].	status := #completed.	^self</body>
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>constants</category>

<body package="BrainFuck" selector="maxExecutionTimeInMs">maxExecutionTimeInMs	^5000</body>

<body package="BrainFuck" selector="memorySize">memorySize	^30000</body>
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>private</category>

<body package="BrainFuck" selector="beginLoop">beginLoop	(memory at: memPtr) == 0 ifFalse: [		loopDepth := loopDepth + 1.		[			currentInstruction := srcStream next.			currentInstruction isNil ifTrue: [^BrainFuckSyntaxError raise].			currentInstruction == $[ ifTrue: [loopDepth := loopDepth + 1].			currentInstruction == $] ifTrue: [loopDepth := loopDepth - 1].			loopDepth == 0		] whileFalse: [			self executeInstruction		]	].	^self</body>

<body package="BrainFuck" selector="decrementPointer">decrementPointer	memPtr := memPtr - 1.	memPtr == 0 ifTrue: [memPtr := self memorySize].	^memPtr</body>

<body package="BrainFuck" selector="decrementValueAtPointer">decrementValueAtPointer	| t1 |	t1 := (memory at: memPtr) - 1.	t1 == -1 ifTrue: [t1 := 255].	memory at: memPtr put: t1.	^t1</body>

<body package="BrainFuck" selector="endLoop">endLoop	(memory at: memPtr) == 0 ifFalse: [		loopDepth := loopDepth + 1.		[			srcStream position == 0 ifTrue: [^BrainFuckSyntaxError raise].			srcStream position: (srcStream position - 2).			currentInstruction := srcStream next.			currentInstruction == $[ ifTrue: [loopDepth := loopDepth - 1].			currentInstruction == $] ifTrue: [loopDepth := loopDepth + 1].			loopDepth == 0		] whileFalse.	].	^self</body>

<body package="BrainFuck" selector="incrementPointer">incrementPointer	memPtr := memPtr + 1.	memPtr == (self memorySize + 1) ifTrue: [memPtr := 1].	^memPtr</body>

<body package="BrainFuck" selector="incrementValueAtPointer">incrementValueAtPointer	| t1 |		t1 := (memory at: memPtr) + 1.	t1 == 256 ifTrue: [t1 := 0].	memory at: memPtr put: t1.	^t1</body>

<body package="BrainFuck" selector="outputCharacterAtPointer">outputCharacterAtPointer		| t1 |	t1 := Character codePoint: (memory at: memPtr).	stdout nextPut: t1.	^t1</body>

<body package="BrainFuck" selector="readCharacterIntoPointer">readCharacterIntoPointer	| t1 |	t1 := stdin next.	t1 isNil		ifTrue: [BrainFuckInputError raise]		ifFalse: [memory at: memPtr put: (t1 asInteger \\ 256)].	^t1</body>
</methods>

<class>
<name>BrainFuckInterpreterExample</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>BrainFuckInterpreterExample class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an incorrect position in 	the file. The file may have been modified after this method was updated."	^super new initialize</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckInterpreterExample</class-id>
<body>Interpretes BrainFuck source code.</body>
</comment>

<methods>
<class-id>BrainFuckInterpreterExample</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	| source interpreter |	super initialize.	source := '++++++++++[&gt;+++++++&gt;++++++++++&gt;+++&gt;+&lt;&lt;&lt;&lt;-]&gt;++.&gt;+.+++++++..+++.&gt;++.&lt;&lt;+++++++++++++++.&gt;.+++.------.--------.&gt;+.&gt;.'.	interpreter := BrainFuckInterpreter new		source: source		; stdin: 'Hello BF!'		; yourself.	Transcript cr		; show: (interpreter start stdout) contents.	^self</body>
</methods>

<class>
<name>BrainFuckSyntaxError</name>
<environment>Smalltalk</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>BrainFuckSyntaxError class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckSyntaxError</class-id>
<body>BrainFuckSyntaxError is raised when a syntax error arises i.e. when a matching "]" is not found.</body>
</comment>

<methods>
<class-id>BrainFuckSyntaxError</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

</st-source>
