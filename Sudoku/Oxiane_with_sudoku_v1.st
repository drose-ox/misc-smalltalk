<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks®, 8.1.1 of 10 mars 2016 on 12 août 2016 at 18:57:18</time-stamp>


<component-created>
<name>Oxiane</name> <type>bundle</type>
</component-created><!-- Bundle Oxiane -->


<component-property>
<name>Oxiane</name> <type>bundle</type>
<property>comment</property> <value>'Oxiane Group'</value>
</component-property>

<component-created>
<name>BrainFuck</name> <type>package</type>
</component-created><!-- Package BrainFuck -->


<component-property>
<name>BrainFuck</name> <type>package</type>
<property>comment</property> <value>'BrainFuck misc. tools'</value>
</component-property>

<name-space>
<name>Oxiane</name>
<environment>Smalltalk</environment>
<private>false</private>
<imports>
			private Smalltalk.*
			</imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</name-space>

<name-space>
<name>BrainFuck</name>
<environment>Oxiane</environment>
<private>false</private>
<imports>
			private Smalltalk.*
			</imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</name-space>

<class>
<name>BrainFuckInterpreter</name>
<environment>Oxiane.BrainFuck</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>srcCode in out status memory memPtr loopDepth currentInstruction debugMode startTime outputSize maxExecutionTime </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id>
<body>Interpretes BrainFuck code.Known bugs:- Character cr after '[' can break the normal execution of the program; avoid pasting BrainFuck code using new lines after '['; in a DocumentEditor, entering a line actually inserts a paragraph separator (U+2029) which doesn't reproduce the bug.- Execution time is limited as well as output size- not tested with binary input (all of 0 to 255 octets)Instance Variables:	srcCode			&lt;ExternalReadStream&gt;	BrainFuck source code	in				&lt;ExternalReadStream&gt;	input given to the BrainFuck program (read with the "," instruction)	out				&lt;ExternalWriteStream&gt;	output given to the BrainFuck program (write with the "." instruction)	status			&lt;Symbol&gt;			indicates wether the BrainFuck program is notStarted, started, or completed	memory			&lt;ByteArray&gt;			BrainFuck machine memory	memPtr			&lt;Integer&gt;			BrainFuck machine memory pointer	loopDepth		&lt;Integer&gt;			private Depth in loops of current instruction, used to find matching "[" or "]"	currentInstruction &lt;Character&gt;			private Current BrainFuck instruction to execute (one of &gt;&lt;+-[],.#)	debugMode		&lt;Boolean&gt;			indicates wether the debug mode is active or not	startTime			&lt;Integer&gt;			timestamp in milliseconds at which time the BrainFuck program was last started	outputSize		&lt;Integer&gt;			keeps track of the size of the output by the BrainFuck program	maxExecutionTime	&lt;Integer&gt;			unless nil, limit of execution time in ms</body>
</comment>

<class>
<name>BrainFuckInterpreterExample</name>
<environment>Oxiane.BrainFuck</environment>
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

<comment>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterExample</class-id>
<body>Interpretes BrainFuck source code.</body>
</comment>

<class>
<name>BrainFuckError</name>
<environment>Oxiane.BrainFuck</environment>
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
<class-id>Oxiane.BrainFuck.BrainFuckError</class-id>
<body>A general error for BrainFuck tools.</body>
</comment>

<class>
<name>BrainFuckInputError</name>
<environment>Oxiane.BrainFuck</environment>
<super>Oxiane.BrainFuck.BrainFuckError</super>
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
<class-id>Oxiane.BrainFuck.BrainFuckInputError</class-id>
<body>BrainFuckInputError is raised when the BrainFuckInterpreter can not read or block on stdin.</body>
</comment>

<class>
<name>BrainFuckSyntaxError</name>
<environment>Oxiane.BrainFuck</environment>
<super>Oxiane.BrainFuck.BrainFuckError</super>
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
<class-id>Oxiane.BrainFuck.BrainFuckSyntaxError</class-id>
<body>BrainFuckSyntaxError is raised when a syntax error arises i.e. when a matching "]" is not found.</body>
</comment>

<class>
<name>BrainFuckExecutionTimeout</name>
<environment>Oxiane.BrainFuck</environment>
<super>Oxiane.BrainFuck.BrainFuckError</super>
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
<class-id>Oxiane.BrainFuck.BrainFuckExecutionTimeout</class-id>
<body>BrainFuckExecutionTimeout is raised when the program runs for longer than the maximum time expected.</body>
</comment>

<class>
<name>BrainFuckOutputOverflowError</name>
<environment>Oxiane.BrainFuck</environment>
<super>Oxiane.BrainFuck.BrainFuckError</super>
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
<class-id>Oxiane.BrainFuck.BrainFuckOutputOverflowError</class-id>
<body>BrainFuckMaxInputSizeReached is raised when the BrainFuck program tries to output more than the defined limit.</body>
</comment>

<class>
<name>BrainFuckInterpreterGuiApplication</name>
<environment>Oxiane.BrainFuck</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>srcCode inputText </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BrainFuck</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id>
<body>BrainFuckInterpreterGuiApplication has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.Instance Variables:	srcCode	&lt;ValueHolder&gt;	description of srcCode	inputText	&lt;ValueHolder&gt;	description of inputText</body>
</comment>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterExample class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterExample</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	| inPair outPair srcPair out |	super initialize.	inPair := Oxiane.IO.SocketStreamPair new.	outPair := Oxiane.IO.SocketStreamPair new.	srcPair := Oxiane.IO.SocketStreamPair new.		[		[			BrainFuckInterpreter interpret: (srcPair readEnd) in: (inPair readEnd) out: (outPair writeEnd)		] ensure: [inPair readEnd close. outPair writeEnd close. srcPair readEnd close]	] fork.	srcPair writeEnd nextPutAll: '[,.]'.	srcPair writeEnd flush.	srcPair writeEnd close.	inPair writeEnd nextPutAll: 'Hello BF!'.	inPair writeEnd flush.	inPair writeEnd close.	[		Processor yield.		out := outPair readEnd next.		out isNil	] whileFalse: [		Transcript show: (String with: out)	].	outPair readEnd close.	^self</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInputError class</class-id> <category>testing</category>

<body package="BrainFuck" selector="mayResume">mayResume	^true</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckSyntaxError class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication class</class-id> <category>interface specs</category>

<body package="BrainFuck" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeAutoSave true #positionAutoSave true #sizeType #lastSavedSize #openType #advanced #positionType #lastSavedPosition ) 			#label: 'BrainFuck Interpreter' 			#min: #(#{Core.Point} 200 200 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 734 529 1334 929 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.DocumentEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0 0 0 0 1 0 0.833333 ) 					#name: #srcCodeEditor 					#isOpaque: true 					#model: #srcCode 					#isWrapped: true 					#isReadOnly: false 					#showHiddenCharacters: true 					#showLineStriping: true 					#autoAccept: true 					#showInputCursor: true 					#showSelection: true ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 50 0 4 0.833333 -70 1 0 1 ) 					#name: #inputEditor 					#model: #inputText 					#tabRequiresControl: true ) 				#(#{UI.ResizingSplitterSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0 0 0.833333 0 1 4 0.833333 ) 					#name: #splitterH1 					#horizontal: true 					#minAboveSize: 30 					#minBelowSize: 30 					#aboveWidgets: 'srcCodeEditor' 					#belowWidgets: 'inputEditor inputLabel' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 10 0 10 0.833333 ) 					#name: #inputLabel 					#label: 'Input' ) 				#(#{UI.ActionButtonSpec} 					#properties: #(#{UI.PropertyListDictionary} #labelFromApplication true ) 					#layout: #(#{Graphics.LayoutOrigin} -66 1 4 0.833333 ) 					#name: #actionButton 					#label: #actionButtonLabel 					#defaultable: true ) ) ) )</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication class</class-id> <category>converting</category>

<body package="BrainFuck" selector="asMscp1252RejectIllegal:">asMscp1252RejectIllegal: string	| resultString currentCharacter encoder |	resultString := ''.	encoder := CharacterEncoder mscp1252.	string do: [ :c |		currentCharacter := encoder encode: c.		currentCharacter &lt; 256			ifTrue: [				resultString := resultString, (String with: c).			]	].	^resultString</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>event evaluating</category>

<body package="BrainFuck" selector="srcCodeChanged">srcCodeChanged	(self widgetAt: #srcCodeEditor) invalidate</body>

<body package="BrainFuck" selector="actionButtonPressed">actionButtonPressed	| inPair outPair srcPair out |	(self wrapperAt: #actionButton) disable.	super initialize.	inPair := Oxiane.IO.SocketStreamPair new.	outPair := Oxiane.IO.SocketStreamPair new.	srcPair := Oxiane.IO.SocketStreamPair new.	[		[			[BrainFuckInterpreter interpret: (srcPair readEnd) in: (inPair readEnd) out: (outPair writeEnd)]				on: BrainFuckError				do: [ :e |					Dialog warn: 'An error was raised: ', e errorString				]		] ensure: [inPair readEnd close. outPair writeEnd close. srcPair readEnd close]	] fork.	srcPair writeEnd nextPutAll: (BrainFuckInterpreterGuiApplication asMscp1252RejectIllegal: self srcCode value asString).	srcPair writeEnd flush.	srcPair writeEnd close.	inPair writeEnd nextPutAll: (BrainFuckInterpreterGuiApplication asMscp1252RejectIllegal: self inputText value asString asByteString).	inPair writeEnd flush.	inPair writeEnd close.	[		Processor yield.		out := outPair readEnd next.		out isNil	] whileFalse: [		Transcript show: (String with: out)	].	outPair readEnd close.	Transcript cr.	(self wrapperAt: #actionButton) enable.	^self</body>

<body package="BrainFuck" selector="inputTextChanged">inputTextChanged	(self widgetAt: #inputEditor) invalidate</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	super initialize.	srcCode := 'Programme Hello World! en BrainFuckBoucle initiale qui affecte des valeurs utiles au tableau++++++++++[ 	&gt;+++++++&gt;++++++++++&gt;+++&gt;+&lt;&lt;&lt;&lt;- ]A la sortie de la boucle le tableau contient:&gt;++.				''H'' = 72 (70 plus 2)&gt;+.					''e'' = 101 (100 plus 1)+++++++.			''l'' = 108 (101 plus 7).					''l'' = 108+++.				''o'' = 111 (108 plus 3)&gt;++.				espace = 32 (30 plus 2)&lt;&lt;+++++++++++++++.	''W'' = 87 (72 plus 15)&gt;.					''o'' = 111+++.				''r'' = 114 (111 plus 3)------.				''l'' = 108 (114 moins 6)--------.				''d'' = 100 (108 moins 8)&gt;+.					''!'' = 33 (32 plus 1)&gt;.					nouvelle ligne = 10' asValue.	inputText := '' asValue.	self open.	(self widgetAt: #inputEditor) controller continuousAccept: true.	inputText onChangeSend: #inputTextChanged to: self.	srcCode onChangeSend: #srcCodeChanged to: self.	(self widgetAt: #actionButton) when: #pressed send: #actionButtonPressed to: self</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>aspects</category>

<body package="BrainFuck" selector="inputText">inputText	^inputText</body>

<body package="BrainFuck" selector="srcCode">srcCode	^srcCode</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>private</category>

<body package="BrainFuck" selector="actionButtonLabel">actionButtonLabel	^'Start'</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckOutputOverflowError</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="interpret:in:out:">interpret: srcCodeExternalReadStream in: inExternalReadStream out: outExternalWriteStream	^(self new)		srcCode: srcCodeExternalReadStream;		in: inExternalReadStream;		out: outExternalWriteStream;		start</body>

<body package="BrainFuck" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize	super initialize.	in := nil.	out := nil.	memory := ByteArray new: self memorySize.	memory changed.	memPtr := 1.	memPtr changed.	srcCode := nil.	status := #notStarted.	status changed.	debugMode := false.	debugMode changed.	outputSize := 0.	maxExecutionTime := 1000.	^self</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>interpreter</category>

<body package="BrainFuck" selector="start">start	startTime := Time microsecondClock.	status := #started.	status changed.	loopDepth := 0.	[(currentInstruction := self nextInstruction) notNil] whileTrue: [self executeInstruction].	status := #completed.	status changed.	in close. out close. srcCode close.	^self</body>

<body package="BrainFuck" selector="terminate">terminate		in close. out close. srcCode close</body>

<body package="BrainFuck" selector="debug">debug	Transcript show: 'Position within code (starting from 1): ', (srcCode position printString); cr		; show: 'Pointer (starting from 1): ', memPtr printString; cr		; show: 'Value at pointer: ', (memory at: memPtr) printString; cr.	self halt.	^self</body>

<body package="BrainFuck" selector="executeInstruction">executeInstruction	currentInstruction == $+ ifTrue: [self incrementValueAtPointer].	currentInstruction == $- ifTrue: [self decrementValueAtPointer].	currentInstruction == $&gt; ifTrue: [self incrementPointer].	currentInstruction == $&lt; ifTrue: [self decrementPointer].	currentInstruction == $. ifTrue: [self outputCharacterAtPointer].	currentInstruction == $, ifTrue: [self readCharacterIntoPointer].	currentInstruction == $[ ifTrue: [self beginLoop].	currentInstruction == $] ifTrue: [self endLoop].	(currentInstruction == $# and: [debugMode]) ifTrue: [self debug]</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>accessing</category>

<body package="BrainFuck" selector="debugMode:">debugMode: anObject	debugMode := anObject.	debugMode changed.	^self</body>

<body package="BrainFuck" selector="memPtr:">memPtr: anObject	memPtr := anObject.	memPtr changed.	^self</body>

<body package="BrainFuck" selector="out">out	^out</body>

<body package="BrainFuck" selector="memPtr">memPtr	^memPtr</body>

<body package="BrainFuck" selector="in">in	^in</body>

<body package="BrainFuck" selector="status:">status: anObject	status := anObject.	status changed.	^self</body>

<body package="BrainFuck" selector="maxExecutionTime:">maxExecutionTime: anObject	maxExecutionTime := anObject.	^self</body>

<body package="BrainFuck" selector="memory:">memory: aByteArray	memory := aByteArray.	memory changed.	^self</body>

<body package="BrainFuck" selector="maxExecutionTime">maxExecutionTime	^maxExecutionTime</body>

<body package="BrainFuck" selector="srcCode">srcCode	^srcCode</body>

<body package="BrainFuck" selector="debugMode">debugMode	^debugMode</body>

<body package="BrainFuck" selector="memory">memory	^memory</body>

<body package="BrainFuck" selector="in:">in: anObject	in := anObject.	^self</body>

<body package="BrainFuck" selector="out:">out: anObject	out := anObject.	^self</body>

<body package="BrainFuck" selector="srcCode:">srcCode: anObject	srcCode := anObject.	^self</body>

<body package="BrainFuck" selector="status">status	^status</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>constants</category>

<body package="BrainFuck" selector="maxOutputSize">maxOutputSize	^1024</body>

<body package="BrainFuck" selector="memorySize">memorySize	^32768</body>
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>private</category>

<body package="BrainFuck" selector="decrementValueAtPointer">decrementValueAtPointer	| t1 |	t1 := (memory at: memPtr) - 1.	t1 == -1 ifTrue: [t1 := 255].	memory at: memPtr put: t1.	memory changed.	^t1</body>

<body package="BrainFuck" selector="beginLoop">beginLoop	(memory at: memPtr) == 0 ifFalse: [		loopDepth := loopDepth + 1.		[			currentInstruction := self nextInstruction.			currentInstruction isNil ifTrue: [^BrainFuckSyntaxError raise].			currentInstruction == $[ ifTrue: [loopDepth := loopDepth + 1].			currentInstruction == $] ifTrue: [loopDepth := loopDepth - 1].			loopDepth == 0		] whileFalse: [			self executeInstruction		]	].	^self</body>

<body package="BrainFuck" selector="outputCharacterAtPointer">outputCharacterAtPointer		| t1 |	outputSize == self maxOutputSize ifTrue: [		BrainFuckOutputOverflowError raise.		self terminate.	].	t1 := Character codePoint: (memory at: memPtr).	out nextPut: t1.	outputSize := outputSize + 1.	^t1</body>

<body package="BrainFuck" selector="nextIn">nextIn	Processor yield.	"[^in next] on: OsError do: [^nil]"	^in next</body>

<body package="BrainFuck" selector="endLoop">endLoop	(memory at: memPtr) == 0 ifFalse: [		loopDepth := loopDepth + 1.		[			srcCode position == 0 ifTrue: [^BrainFuckSyntaxError raise].			srcCode position: (srcCode position - 2).			currentInstruction := self nextInstruction.			currentInstruction == $[ ifTrue: [loopDepth := loopDepth - 1].			currentInstruction == $] ifTrue: [loopDepth := loopDepth + 1].			loopDepth == 0		] whileFalse.	].	^self</body>

<body package="BrainFuck" selector="incrementPointer">incrementPointer	memPtr := memPtr + 1.	memPtr == (self memorySize + 1) ifTrue: [memPtr := 1].	memPtr changed.	^memPtr</body>

<body package="BrainFuck" selector="incrementValueAtPointer">incrementValueAtPointer	| t1 |		t1 := (memory at: memPtr) + 1.	t1 == 256 ifTrue: [t1 := 0].	memory at: memPtr put: t1.	memory changed.	^t1</body>

<body package="BrainFuck" selector="readCharacterIntoPointer">readCharacterIntoPointer	| t1 t2 |	t1 := self nextIn.	t1 isNil ifFalse: [		t2 := memory at: memPtr put: (t1 asInteger \\ 256).		memory changed.		^t2	].	^t1</body>

<body package="BrainFuck" selector="decrementPointer">decrementPointer	memPtr := memPtr - 1.	memPtr == 0 ifTrue: [memPtr := self memorySize].	memPtr changed.	^memPtr</body>

<body package="BrainFuck" selector="nextInstruction">nextInstruction	(Time microsecondClock) - startTime // 1000 &gt; (self maxExecutionTime) ifTrue: [		BrainFuckExecutionTimeout raise.		self terminate	].	Processor yield.	^srcCode next</body>
</methods>



<component-created>
<name>IO</name> <type>package</type>
</component-created><!-- Package IO -->


<component-property>
<name>IO</name> <type>package</type>
<property>comment</property> <value>'Input/Output tools.'</value>
</component-property>

<name-space>
<name>IO</name>
<environment>Oxiane</environment>
<private>false</private>
<imports>
			private Smalltalk.*
			</imports>
<category></category>
<attributes>
<package>IO</package>
</attributes>
</name-space>

<class>
<name>SocketStreamPair</name>
<environment>Oxiane.IO</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>writeEnd readEnd </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>IO</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.IO.SocketStreamPair</class-id>
<body>Gives access to two streams connected by a Socket.This can be useful for giving only write access to some component while giving only read access to another component, making them cummunicate with each other.The close message must be sent to close the connections.Instance Variables:	writeEnd	&lt;ExternalWriteStream&gt;	stream to write what can later be read by the readEnd	readEnd	&lt;ExternalReadStream&gt;	stream to read what was written by the writeEnd</body>
</comment>

<methods>
<class-id>Oxiane.IO.SocketStreamPair class</class-id> <category>instance creation</category>

<body package="IO" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Oxiane.IO.SocketStreamPair</class-id> <category>initialize-release</category>

<body package="IO" selector="close">close	writeEnd close.	readEnd close</body>

<body package="IO" selector="closed">closed	^readEnd closed and: [writeEnd closed]</body>

<body package="IO" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	| pair |	super initialize.	pair := SocketAccessor openPair.	writeEnd := pair first writeStream.	readEnd := pair last readStream.	^self</body>
</methods>

<methods>
<class-id>Oxiane.IO.SocketStreamPair</class-id> <category>accessing</category>

<body package="IO" selector="writeEnd">writeEnd	^writeEnd</body>

<body package="IO" selector="readEnd">readEnd	^readEnd</body>
</methods>



<component-created>
<name>Sudoku</name> <type>package</type>
</component-created><!-- Package Sudoku -->


<component-property>
<name>Sudoku</name> <type>package</type>
<property>comment</property> <value>'Sudoku puzzle representations, algorithms and UI.'</value>
</component-property>

<name-space>
<name>Sudoku</name>
<environment>Oxiane</environment>
<private>false</private>
<imports>
			private Core.*
			</imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</name-space>

<class>
<name>SudokuEditor</name>
<environment>Oxiane.Sudoku</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>grid currentDigit currentIndex busy </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id>
<body>SudokuEditor is a GUI application to play with a Sudoku puzzle.Instance Variables:	grid			&lt;SudokuGrid&gt;		internal representation of the Sudoku puzzle	currentDigit	&lt;String&gt;			last typed or selected digit	currentIndex	&lt;Integer&gt;		index of the `currentDigit` in the `grid`	busy			&lt;Boolean&gt;		is currentDigitChanged method busy?</body>
</comment>

<class>
<name>SudokuGrid</name>
<environment>Oxiane.Sudoku</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>size matrix blockWidth blockHeight blocksInLine blocksInColumn rows cols digits squares units peers </inst-vars>
<class-inst-vars>opCancelTimeInMs </class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id>
<body>Contains data about a sudoku grid (numbers or blanks in columns and rows), and utilities to work on this data.Instance Variables:	size				&lt;Integer&gt;	number of rows, number of columns, must be in availableSizes	matrix			&lt;Array&gt;		array of digits in the grid from left-&gt;right, top-&gt;bottom, of capacity = size squared	blockWidth		&lt;Integer&gt;	number of digits on the same line in a block	blockHeight		&lt;Integer&gt;	number of digits in the same column in a block	blocksInLine		&lt;Integer&gt;	number of blocks on the same line	blocksInColumn	&lt;Integer&gt;	number of blocks in the same column	rows				&lt;Array&gt;		ordered names of rows: A-I	cols				&lt;Array&gt;		ordered names of columns: 1-9	digits			&lt;Array&gt;         possible values in a solved square: 1-9	squares			&lt;Array&gt;		ordered names of each square: A1 to I9	units			&lt;Dictionary&gt;	peers 			&lt;Dictionary&gt;  for each square, squares that could conflict with itClass Instance Variables:	opCancelTimeInMs &lt;Integer&gt;	millisecond clock value not to exceed when deciding wether to prolonge a canceleable operation or not. Two of such operations should not be running at the same time.</body>
</comment>

<class>
<name>SudokuError</name>
<environment>Oxiane.Sudoku</environment>
<super>Core.Error</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.Sudoku.SudokuError</class-id>
<body>Any sudoku-related error is kind of a SudokuError.</body>
</comment>

<class>
<name>SudokuSizeNotAvailableError</name>
<environment>Oxiane.Sudoku</environment>
<super>Oxiane.Sudoku.SudokuError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.Sudoku.SudokuSizeNotAvailableError</class-id>
<body>SudokuSizeNotAvailableError is raised in case of an attempt to use un unsupported Sudoku size.</body>
</comment>

<class>
<name>SudokuStringParseError</name>
<environment>Oxiane.Sudoku</environment>
<super>Oxiane.Sudoku.SudokuError</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.Sudoku.SudokuStringParseError</class-id>
<body>SudokuStringParseError is raised when a a Sudoku string representation fails to parse into a SudokuGrid.</body>
</comment>

<class>
<name>SudokuViewer</name>
<environment>Oxiane.Sudoku</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>grid </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Sudoku</package>
</attributes>
</class>

<comment>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id>
<body>SudokuViewer is a GUI application to view a SudokuGrid.Instance Variables:	grid			&lt;SudokuGrid&gt;		the sudoku grid to display</body>
</comment>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer class</class-id> <category>class initialization</category>

<body package="Sudoku" selector="with:">with: aSudokuGrid	^self basicNew grid: aSudokuGrid.</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer class</class-id> <category>interface specs</category>

<body package="Sudoku" selector="installSpec:">installSpec: aSudokuGrid		| code size blocksInLine blocksInColumn i matrix |	size := aSudokuGrid size.	blocksInLine := aSudokuGrid blocksInLine.	blocksInColumn := aSudokuGrid blocksInColumn.	matrix := aSudokuGrid matrix.	code := 'windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #lastSavedSize #positionType #lastSavedPosition #openType #advanced #sizeAutoSave true #positionAutoSave true ) 			#label: ''Sudoku'' 			#min: #(#{Core.Point} 200 200 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 621 305 1221 905 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #('.	i := 0.	(1 to: blocksInColumn) do: [ :line |		| top bottom |		top := line - 1 / blocksInColumn asFloat.		bottom := line / blocksInColumn asFloat.		(1 to: blocksInLine) do: [ :column |			| left right |			i := i + 1.			left := column - 1 / blocksInLine asFloat.			right := column / blocksInLine asFloat.			code := code, '					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 ', left printString, ' 0 ', top printString, ' 0 ', right printString ,' 0 ', bottom printString ,' ) 						#lineWidth: 2						#name: #block', i printString, ' ) '		]	].	i := 0.	(1 to: size) do: [ :y |		| top labelTop bottom |		top := y - 1 / size asFloat.		labelTop := y - 0.5 / size asFloat.		bottom := y / size asFloat.		(1 to: size) do: [ :x |			| left right label |			i := i + 1.			label := matrix at: i.			label = 0 ifTrue: [label := ''] ifFalse: [label := label printString].			left := x - 1 / size asFloat.			right := x / size asFloat.			code := code, '						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 ', left printString, ' 0 ', top printString, ' 0 ', right printString ,' 0 ', bottom printString ,' ) 						#lineWidth: 1						#name: #position', i printString, ' ) '.			left := x - 0.5 / size asFloat.			code := code, '						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 ', left printString, ' -15 ', labelTop printString, ' 6 ', left printString, ' 15 ', labelTop printString, ' ) 							#label: ''', label, ''' 							#style: #''Arbor-20''							#name: #label', i printString, ' ) '		]	].	code := code, ') ) )'.	^self class compile: code</body>

<body package="Sudoku" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #lastSavedSize #positionType #lastSavedPosition #openType #advanced #sizeAutoSave true #positionAutoSave true ) 			#label: 'Sudoku' 			#min: #(#{Core.Point} 200 200 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 621 305 1221 905 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.0 0 0.333333 0 0.333333 ) 						#lineWidth: 2						#name: #block1 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.0 0 0.666667 0 0.333333 ) 						#lineWidth: 2						#name: #block2 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.0 0 1.0 0 0.333333 ) 						#lineWidth: 2						#name: #block3 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.333333 0 0.333333 0 0.666667 ) 						#lineWidth: 2						#name: #block4 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.333333 0 0.666667 0 0.666667 ) 						#lineWidth: 2						#name: #block5 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.333333 0 1.0 0 0.666667 ) 						#lineWidth: 2						#name: #block6 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.666667 0 0.333333 0 1.0 ) 						#lineWidth: 2						#name: #block7 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.666667 0 0.666667 0 1.0 ) 						#lineWidth: 2						#name: #block8 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.666667 0 1.0 0 1.0 ) 						#lineWidth: 2						#name: #block9 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.0 0 0.111111 0 0.111111 ) 						#lineWidth: 1						#name: #position1 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.0555556 6 0.0555556 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label1 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.0 0 0.222222 0 0.111111 ) 						#lineWidth: 1						#name: #position2 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.0555556 6 0.166667 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label2 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.0 0 0.333333 0 0.111111 ) 						#lineWidth: 1						#name: #position3 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.0555556 6 0.277778 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label3 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.0 0 0.444444 0 0.111111 ) 						#lineWidth: 1						#name: #position4 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.0555556 6 0.388889 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label4 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.0 0 0.555556 0 0.111111 ) 						#lineWidth: 1						#name: #position5 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.0555556 6 0.5 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label5 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.0 0 0.666667 0 0.111111 ) 						#lineWidth: 1						#name: #position6 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.0555556 6 0.611111 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label6 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.0 0 0.777778 0 0.111111 ) 						#lineWidth: 1						#name: #position7 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.0555556 6 0.722222 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label7 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.0 0 0.888889 0 0.111111 ) 						#lineWidth: 1						#name: #position8 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.0555556 6 0.833333 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label8 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.0 0 1.0 0 0.111111 ) 						#lineWidth: 1						#name: #position9 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.0555556 6 0.944444 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label9 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.111111 0 0.111111 0 0.222222 ) 						#lineWidth: 1						#name: #position10 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.166667 6 0.0555556 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label10 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.111111 0 0.222222 0 0.222222 ) 						#lineWidth: 1						#name: #position11 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.166667 6 0.166667 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label11 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.111111 0 0.333333 0 0.222222 ) 						#lineWidth: 1						#name: #position12 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.166667 6 0.277778 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label12 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.111111 0 0.444444 0 0.222222 ) 						#lineWidth: 1						#name: #position13 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.166667 6 0.388889 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label13 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.111111 0 0.555556 0 0.222222 ) 						#lineWidth: 1						#name: #position14 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.166667 6 0.5 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label14 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.111111 0 0.666667 0 0.222222 ) 						#lineWidth: 1						#name: #position15 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.166667 6 0.611111 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label15 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.111111 0 0.777778 0 0.222222 ) 						#lineWidth: 1						#name: #position16 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.166667 6 0.722222 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label16 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.111111 0 0.888889 0 0.222222 ) 						#lineWidth: 1						#name: #position17 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.166667 6 0.833333 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label17 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.111111 0 1.0 0 0.222222 ) 						#lineWidth: 1						#name: #position18 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.166667 6 0.944444 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label18 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.222222 0 0.111111 0 0.333333 ) 						#lineWidth: 1						#name: #position19 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.277778 6 0.0555556 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label19 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.222222 0 0.222222 0 0.333333 ) 						#lineWidth: 1						#name: #position20 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.277778 6 0.166667 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label20 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.222222 0 0.333333 0 0.333333 ) 						#lineWidth: 1						#name: #position21 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.277778 6 0.277778 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label21 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.222222 0 0.444444 0 0.333333 ) 						#lineWidth: 1						#name: #position22 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.277778 6 0.388889 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label22 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.222222 0 0.555556 0 0.333333 ) 						#lineWidth: 1						#name: #position23 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.277778 6 0.5 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label23 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.222222 0 0.666667 0 0.333333 ) 						#lineWidth: 1						#name: #position24 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.277778 6 0.611111 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label24 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.222222 0 0.777778 0 0.333333 ) 						#lineWidth: 1						#name: #position25 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.277778 6 0.722222 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label25 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.222222 0 0.888889 0 0.333333 ) 						#lineWidth: 1						#name: #position26 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.277778 6 0.833333 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label26 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.222222 0 1.0 0 0.333333 ) 						#lineWidth: 1						#name: #position27 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.277778 6 0.944444 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label27 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.333333 0 0.111111 0 0.444444 ) 						#lineWidth: 1						#name: #position28 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.388889 6 0.0555556 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label28 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.333333 0 0.222222 0 0.444444 ) 						#lineWidth: 1						#name: #position29 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.388889 6 0.166667 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label29 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.333333 0 0.333333 0 0.444444 ) 						#lineWidth: 1						#name: #position30 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.388889 6 0.277778 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label30 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.333333 0 0.444444 0 0.444444 ) 						#lineWidth: 1						#name: #position31 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.388889 6 0.388889 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label31 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.333333 0 0.555556 0 0.444444 ) 						#lineWidth: 1						#name: #position32 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.388889 6 0.5 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label32 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.333333 0 0.666667 0 0.444444 ) 						#lineWidth: 1						#name: #position33 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.388889 6 0.611111 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label33 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.333333 0 0.777778 0 0.444444 ) 						#lineWidth: 1						#name: #position34 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.388889 6 0.722222 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label34 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.333333 0 0.888889 0 0.444444 ) 						#lineWidth: 1						#name: #position35 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.388889 6 0.833333 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label35 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.333333 0 1.0 0 0.444444 ) 						#lineWidth: 1						#name: #position36 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.388889 6 0.944444 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label36 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.444444 0 0.111111 0 0.555556 ) 						#lineWidth: 1						#name: #position37 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.5 6 0.0555556 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label37 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.444444 0 0.222222 0 0.555556 ) 						#lineWidth: 1						#name: #position38 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.5 6 0.166667 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label38 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.444444 0 0.333333 0 0.555556 ) 						#lineWidth: 1						#name: #position39 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.5 6 0.277778 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label39 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.444444 0 0.444444 0 0.555556 ) 						#lineWidth: 1						#name: #position40 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.5 6 0.388889 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label40 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.444444 0 0.555556 0 0.555556 ) 						#lineWidth: 1						#name: #position41 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.5 6 0.5 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label41 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.444444 0 0.666667 0 0.555556 ) 						#lineWidth: 1						#name: #position42 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.5 6 0.611111 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label42 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.444444 0 0.777778 0 0.555556 ) 						#lineWidth: 1						#name: #position43 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.5 6 0.722222 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label43 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.444444 0 0.888889 0 0.555556 ) 						#lineWidth: 1						#name: #position44 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.5 6 0.833333 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label44 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.444444 0 1.0 0 0.555556 ) 						#lineWidth: 1						#name: #position45 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.5 6 0.944444 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label45 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.555556 0 0.111111 0 0.666667 ) 						#lineWidth: 1						#name: #position46 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.611111 6 0.0555556 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label46 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.555556 0 0.222222 0 0.666667 ) 						#lineWidth: 1						#name: #position47 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.611111 6 0.166667 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label47 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.555556 0 0.333333 0 0.666667 ) 						#lineWidth: 1						#name: #position48 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.611111 6 0.277778 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label48 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.555556 0 0.444444 0 0.666667 ) 						#lineWidth: 1						#name: #position49 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.611111 6 0.388889 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label49 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.555556 0 0.555556 0 0.666667 ) 						#lineWidth: 1						#name: #position50 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.611111 6 0.5 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label50 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.555556 0 0.666667 0 0.666667 ) 						#lineWidth: 1						#name: #position51 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.611111 6 0.611111 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label51 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.555556 0 0.777778 0 0.666667 ) 						#lineWidth: 1						#name: #position52 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.611111 6 0.722222 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label52 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.555556 0 0.888889 0 0.666667 ) 						#lineWidth: 1						#name: #position53 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.611111 6 0.833333 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label53 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.555556 0 1.0 0 0.666667 ) 						#lineWidth: 1						#name: #position54 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.611111 6 0.944444 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label54 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.666667 0 0.111111 0 0.777778 ) 						#lineWidth: 1						#name: #position55 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.722222 6 0.0555556 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label55 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.666667 0 0.222222 0 0.777778 ) 						#lineWidth: 1						#name: #position56 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.722222 6 0.166667 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label56 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.666667 0 0.333333 0 0.777778 ) 						#lineWidth: 1						#name: #position57 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.722222 6 0.277778 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label57 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.666667 0 0.444444 0 0.777778 ) 						#lineWidth: 1						#name: #position58 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.722222 6 0.388889 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label58 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.666667 0 0.555556 0 0.777778 ) 						#lineWidth: 1						#name: #position59 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.722222 6 0.5 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label59 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.666667 0 0.666667 0 0.777778 ) 						#lineWidth: 1						#name: #position60 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.722222 6 0.611111 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label60 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.666667 0 0.777778 0 0.777778 ) 						#lineWidth: 1						#name: #position61 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.722222 6 0.722222 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label61 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.666667 0 0.888889 0 0.777778 ) 						#lineWidth: 1						#name: #position62 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.722222 6 0.833333 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label62 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.666667 0 1.0 0 0.777778 ) 						#lineWidth: 1						#name: #position63 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.722222 6 0.944444 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label63 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.777778 0 0.111111 0 0.888889 ) 						#lineWidth: 1						#name: #position64 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.833333 6 0.0555556 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label64 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.777778 0 0.222222 0 0.888889 ) 						#lineWidth: 1						#name: #position65 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.833333 6 0.166667 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label65 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.777778 0 0.333333 0 0.888889 ) 						#lineWidth: 1						#name: #position66 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.833333 6 0.277778 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label66 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.777778 0 0.444444 0 0.888889 ) 						#lineWidth: 1						#name: #position67 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.833333 6 0.388889 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label67 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.777778 0 0.555556 0 0.888889 ) 						#lineWidth: 1						#name: #position68 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.833333 6 0.5 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label68 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.777778 0 0.666667 0 0.888889 ) 						#lineWidth: 1						#name: #position69 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.833333 6 0.611111 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label69 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.777778 0 0.777778 0 0.888889 ) 						#lineWidth: 1						#name: #position70 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.833333 6 0.722222 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label70 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.777778 0 0.888889 0 0.888889 ) 						#lineWidth: 1						#name: #position71 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.833333 6 0.833333 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label71 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.777778 0 1.0 0 0.888889 ) 						#lineWidth: 1						#name: #position72 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.833333 6 0.944444 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label72 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.888889 0 0.111111 0 1.0 ) 						#lineWidth: 1						#name: #position73 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.944444 6 0.0555556 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label73 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.888889 0 0.222222 0 1.0 ) 						#lineWidth: 1						#name: #position74 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.944444 6 0.166667 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label74 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.888889 0 0.333333 0 1.0 ) 						#lineWidth: 1						#name: #position75 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.944444 6 0.277778 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label75 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.888889 0 0.444444 0 1.0 ) 						#lineWidth: 1						#name: #position76 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.944444 6 0.388889 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label76 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.888889 0 0.555556 0 1.0 ) 						#lineWidth: 1						#name: #position77 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.944444 6 0.5 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label77 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.888889 0 0.666667 0 1.0 ) 						#lineWidth: 1						#name: #position78 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.944444 6 0.611111 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label78 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.888889 0 0.777778 0 1.0 ) 						#lineWidth: 1						#name: #position79 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.944444 6 0.722222 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label79 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.888889 0 0.888889 0 1.0 ) 						#lineWidth: 1						#name: #position80 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.944444 6 0.833333 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label80 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.888889 0 1.0 0 1.0 ) 						#lineWidth: 1						#name: #position81 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.944444 6 0.944444 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label81 ) ) ) )</body>
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>interface opening</category>

<body package="Sudoku" selector="open">open	| r |	self class installSpec: grid.	r := super open.	self colorize.	^r.</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>accessing</category>

<body package="Sudoku" selector="grid">grid	^grid</body>

<body package="Sudoku" selector="grid:">grid: aSudokuGrid	grid := aSudokuGrid.	^self</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>changing</category>

<body package="Sudoku" selector="colorize">colorize	| i colour |	colour := Graphics.ColorValue brightness: 0.9.	i := 0.	(1 to: grid blocksInColumn) do: [ :j |		(1 to: grid blocksInLine) do: [ :k |			i := i + 1.			k + (j \\ 2) % 2 = 1 ifTrue: [				| block lp |				block := self wrapperAt: ('block', i printString) asSymbol.				lp := block lookPreferences backgroundColor: colour.				block lookPreferences: lp.			]		]	].	^self</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initialize">initialize	grid := SudokuGrid new.	^self</body>
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuStringParseError</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuEditor class</class-id> <category>class initialization</category>

<body package="Sudoku" selector="with:">with: aSudokuGrid	^self new grid: aSudokuGrid.</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor class</class-id> <category>interface specs</category>

<body package="Sudoku" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #lastSavedSize #positionType #lastSavedPosition #openType #advanced #sizeAutoSave true #positionAutoSave true ) 			#label: 'Sudoku' 			#min: #(#{Core.Point} 200 200 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 621 305 1221 905 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.0 0 0.333333 0 0.333333 ) 						#lineWidth: 2						#name: #block1 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.0 0 0.666667 0 0.333333 ) 						#lineWidth: 2						#name: #block2 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.0 0 1.0 0 0.333333 ) 						#lineWidth: 2						#name: #block3 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.333333 0 0.333333 0 0.666667 ) 						#lineWidth: 2						#name: #block4 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.333333 0 0.666667 0 0.666667 ) 						#lineWidth: 2						#name: #block5 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.333333 0 1.0 0 0.666667 ) 						#lineWidth: 2						#name: #block6 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.666667 0 0.333333 0 1.0 ) 						#lineWidth: 2						#name: #block7 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.666667 0 0.666667 0 1.0 ) 						#lineWidth: 2						#name: #block8 ) 					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.666667 0 1.0 0 1.0 ) 						#lineWidth: 2						#name: #block9 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.0 0 0.111111 0 0.111111 ) 						#lineWidth: 1						#name: #position1 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.0 0 0.111111 0 0.111111 ) 					#name: #click1 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.0555556 6 0.0555556 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label1 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.0 0 0.222222 0 0.111111 ) 						#lineWidth: 1						#name: #position2 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.0 0 0.222222 0 0.111111 ) 					#name: #click2 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.0555556 6 0.166667 15 0.0555556 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label2 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.0 0 0.333333 0 0.111111 ) 						#lineWidth: 1						#name: #position3 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.0 0 0.333333 0 0.111111 ) 					#name: #click3 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.0555556 6 0.277778 15 0.0555556 ) 							#label: '5' 							#style: #'Arbor-20'							#name: #label3 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.0 0 0.444444 0 0.111111 ) 						#lineWidth: 1						#name: #position4 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.0 0 0.444444 0 0.111111 ) 					#name: #click4 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.0555556 6 0.388889 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label4 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.0 0 0.555556 0 0.111111 ) 						#lineWidth: 1						#name: #position5 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.0 0 0.555556 0 0.111111 ) 					#name: #click5 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.0555556 6 0.5 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label5 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.0 0 0.666667 0 0.111111 ) 						#lineWidth: 1						#name: #position6 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.0 0 0.666667 0 0.111111 ) 					#name: #click6 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.0555556 6 0.611111 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label6 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.0 0 0.777778 0 0.111111 ) 						#lineWidth: 1						#name: #position7 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.0 0 0.777778 0 0.111111 ) 					#name: #click7 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.0555556 6 0.722222 15 0.0555556 ) 							#label: '8' 							#style: #'Arbor-20'							#name: #label7 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.0 0 0.888889 0 0.111111 ) 						#lineWidth: 1						#name: #position8 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.0 0 0.888889 0 0.111111 ) 					#name: #click8 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.0555556 6 0.833333 15 0.0555556 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label8 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.0 0 1.0 0 0.111111 ) 						#lineWidth: 1						#name: #position9 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.0 0 1.0 0 0.111111 ) 					#name: #click9 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.0555556 6 0.944444 15 0.0555556 ) 							#label: '3' 							#style: #'Arbor-20'							#name: #label9 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.111111 0 0.111111 0 0.222222 ) 						#lineWidth: 1						#name: #position10 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.111111 0 0.111111 0 0.222222 ) 					#name: #click10 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.166667 6 0.0555556 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label10 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.111111 0 0.222222 0 0.222222 ) 						#lineWidth: 1						#name: #position11 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.111111 0 0.222222 0 0.222222 ) 					#name: #click11 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.166667 6 0.166667 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label11 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.111111 0 0.333333 0 0.222222 ) 						#lineWidth: 1						#name: #position12 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.111111 0 0.333333 0 0.222222 ) 					#name: #click12 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.166667 6 0.277778 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label12 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.111111 0 0.444444 0 0.222222 ) 						#lineWidth: 1						#name: #position13 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.111111 0 0.444444 0 0.222222 ) 					#name: #click13 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.166667 6 0.388889 15 0.166667 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label13 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.111111 0 0.555556 0 0.222222 ) 						#lineWidth: 1						#name: #position14 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.111111 0 0.555556 0 0.222222 ) 					#name: #click14 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.166667 6 0.5 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label14 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.111111 0 0.666667 0 0.222222 ) 						#lineWidth: 1						#name: #position15 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.111111 0 0.666667 0 0.222222 ) 					#name: #click15 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.166667 6 0.611111 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label15 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.111111 0 0.777778 0 0.222222 ) 						#lineWidth: 1						#name: #position16 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.111111 0 0.777778 0 0.222222 ) 					#name: #click16 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.166667 6 0.722222 15 0.166667 ) 							#label: '1' 							#style: #'Arbor-20'							#name: #label16 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.111111 0 0.888889 0 0.222222 ) 						#lineWidth: 1						#name: #position17 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.111111 0 0.888889 0 0.222222 ) 					#name: #click17 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.166667 6 0.833333 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label17 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.111111 0 1.0 0 0.222222 ) 						#lineWidth: 1						#name: #position18 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.111111 0 1.0 0 0.222222 ) 					#name: #click18 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.166667 6 0.944444 15 0.166667 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label18 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.222222 0 0.111111 0 0.333333 ) 						#lineWidth: 1						#name: #position19 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.222222 0 0.111111 0 0.333333 ) 					#name: #click19 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.277778 6 0.0555556 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label19 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.222222 0 0.222222 0 0.333333 ) 						#lineWidth: 1						#name: #position20 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.222222 0 0.222222 0 0.333333 ) 					#name: #click20 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.277778 6 0.166667 15 0.277778 ) 							#label: '4' 							#style: #'Arbor-20'							#name: #label20 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.222222 0 0.333333 0 0.333333 ) 						#lineWidth: 1						#name: #position21 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.222222 0 0.333333 0 0.333333 ) 					#name: #click21 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.277778 6 0.277778 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label21 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.222222 0 0.444444 0 0.333333 ) 						#lineWidth: 1						#name: #position22 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.222222 0 0.444444 0 0.333333 ) 					#name: #click22 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.277778 6 0.388889 15 0.277778 ) 							#label: '3' 							#style: #'Arbor-20'							#name: #label22 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.222222 0 0.555556 0 0.333333 ) 						#lineWidth: 1						#name: #position23 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.222222 0 0.555556 0 0.333333 ) 					#name: #click23 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.277778 6 0.5 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label23 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.222222 0 0.666667 0 0.333333 ) 						#lineWidth: 1						#name: #position24 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.222222 0 0.666667 0 0.333333 ) 					#name: #click24 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.277778 6 0.611111 15 0.277778 ) 							#label: '1' 							#style: #'Arbor-20'							#name: #label24 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.222222 0 0.777778 0 0.333333 ) 						#lineWidth: 1						#name: #position25 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.222222 0 0.777778 0 0.333333 ) 					#name: #click25 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.277778 6 0.722222 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label25 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.222222 0 0.888889 0 0.333333 ) 						#lineWidth: 1						#name: #position26 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.222222 0 0.888889 0 0.333333 ) 					#name: #click26 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.277778 6 0.833333 15 0.277778 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label26 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.222222 0 1.0 0 0.333333 ) 						#lineWidth: 1						#name: #position27 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.222222 0 1.0 0 0.333333 ) 					#name: #click27 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.277778 6 0.944444 15 0.277778 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label27 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.333333 0 0.111111 0 0.444444 ) 						#lineWidth: 1						#name: #position28 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.333333 0 0.111111 0 0.444444 ) 					#name: #click28 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.388889 6 0.0555556 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label28 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.333333 0 0.222222 0 0.444444 ) 						#lineWidth: 1						#name: #position29 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.333333 0 0.222222 0 0.444444 ) 					#name: #click29 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.388889 6 0.166667 15 0.388889 ) 							#label: '3' 							#style: #'Arbor-20'							#name: #label29 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.333333 0 0.333333 0 0.444444 ) 						#lineWidth: 1						#name: #position30 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.333333 0 0.333333 0 0.444444 ) 					#name: #click30 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.388889 6 0.277778 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label30 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.333333 0 0.444444 0 0.444444 ) 						#lineWidth: 1						#name: #position31 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.333333 0 0.444444 0 0.444444 ) 					#name: #click31 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.388889 6 0.388889 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label31 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.333333 0 0.555556 0 0.444444 ) 						#lineWidth: 1						#name: #position32 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.333333 0 0.555556 0 0.444444 ) 					#name: #click32 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.388889 6 0.5 15 0.388889 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label32 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.333333 0 0.666667 0 0.444444 ) 						#lineWidth: 1						#name: #position33 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.333333 0 0.666667 0 0.444444 ) 					#name: #click33 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.388889 6 0.611111 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label33 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.333333 0 0.777778 0 0.444444 ) 						#lineWidth: 1						#name: #position34 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.333333 0 0.777778 0 0.444444 ) 					#name: #click34 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.388889 6 0.722222 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label34 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.333333 0 0.888889 0 0.444444 ) 						#lineWidth: 1						#name: #position35 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.333333 0 0.888889 0 0.444444 ) 					#name: #click35 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.388889 6 0.833333 15 0.388889 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label35 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.333333 0 1.0 0 0.444444 ) 						#lineWidth: 1						#name: #position36 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.333333 0 1.0 0 0.444444 ) 					#name: #click36 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.388889 6 0.944444 15 0.388889 ) 							#label: '6' 							#style: #'Arbor-20'							#name: #label36 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.444444 0 0.111111 0 0.555556 ) 						#lineWidth: 1						#name: #position37 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.444444 0 0.111111 0 0.555556 ) 					#name: #click37 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.5 6 0.0555556 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label37 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.444444 0 0.222222 0 0.555556 ) 						#lineWidth: 1						#name: #position38 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.444444 0 0.222222 0 0.555556 ) 					#name: #click38 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.5 6 0.166667 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label38 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.444444 0 0.333333 0 0.555556 ) 						#lineWidth: 1						#name: #position39 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.444444 0 0.333333 0 0.555556 ) 					#name: #click39 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.5 6 0.277778 15 0.5 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label39 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.444444 0 0.444444 0 0.555556 ) 						#lineWidth: 1						#name: #position40 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.444444 0 0.444444 0 0.555556 ) 					#name: #click40 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.5 6 0.388889 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label40 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.444444 0 0.555556 0 0.555556 ) 						#lineWidth: 1						#name: #position41 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.444444 0 0.555556 0 0.555556 ) 					#name: #click41 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.5 6 0.5 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label41 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.444444 0 0.666667 0 0.555556 ) 						#lineWidth: 1						#name: #position42 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.444444 0 0.666667 0 0.555556 ) 					#name: #click42 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.5 6 0.611111 15 0.5 ) 							#label: '5' 							#style: #'Arbor-20'							#name: #label42 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.444444 0 0.777778 0 0.555556 ) 						#lineWidth: 1						#name: #position43 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.444444 0 0.777778 0 0.555556 ) 					#name: #click43 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.5 6 0.722222 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label43 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.444444 0 0.888889 0 0.555556 ) 						#lineWidth: 1						#name: #position44 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.444444 0 0.888889 0 0.555556 ) 					#name: #click44 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.5 6 0.833333 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label44 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.444444 0 1.0 0 0.555556 ) 						#lineWidth: 1						#name: #position45 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.444444 0 1.0 0 0.555556 ) 					#name: #click45 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.5 6 0.944444 15 0.5 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label45 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.555556 0 0.111111 0 0.666667 ) 						#lineWidth: 1						#name: #position46 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.555556 0 0.111111 0 0.666667 ) 					#name: #click46 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.611111 6 0.0555556 15 0.611111 ) 							#label: '6' 							#style: #'Arbor-20'							#name: #label46 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.555556 0 0.222222 0 0.666667 ) 						#lineWidth: 1						#name: #position47 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.555556 0 0.222222 0 0.666667 ) 					#name: #click47 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.611111 6 0.166667 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label47 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.555556 0 0.333333 0 0.666667 ) 						#lineWidth: 1						#name: #position48 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.555556 0 0.333333 0 0.666667 ) 					#name: #click48 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.611111 6 0.277778 15 0.611111 ) 							#label: '8' 							#style: #'Arbor-20'							#name: #label48 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.555556 0 0.444444 0 0.666667 ) 						#lineWidth: 1						#name: #position49 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.555556 0 0.444444 0 0.666667 ) 					#name: #click49 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.611111 6 0.388889 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label49 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.555556 0 0.555556 0 0.666667 ) 						#lineWidth: 1						#name: #position50 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.555556 0 0.555556 0 0.666667 ) 					#name: #click50 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.611111 6 0.5 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label50 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.555556 0 0.666667 0 0.666667 ) 						#lineWidth: 1						#name: #position51 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.555556 0 0.666667 0 0.666667 ) 					#name: #click51 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.611111 6 0.611111 15 0.611111 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label51 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.555556 0 0.777778 0 0.666667 ) 						#lineWidth: 1						#name: #position52 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.555556 0 0.777778 0 0.666667 ) 					#name: #click52 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.611111 6 0.722222 15 0.611111 ) 							#label: '7' 							#style: #'Arbor-20'							#name: #label52 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.555556 0 0.888889 0 0.666667 ) 						#lineWidth: 1						#name: #position53 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.555556 0 0.888889 0 0.666667 ) 					#name: #click53 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.611111 6 0.833333 15 0.611111 ) 							#label: '2' 							#style: #'Arbor-20'							#name: #label53 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.555556 0 1.0 0 0.666667 ) 						#lineWidth: 1						#name: #position54 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.555556 0 1.0 0 0.666667 ) 					#name: #click54 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.611111 6 0.944444 15 0.611111 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label54 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.666667 0 0.111111 0 0.777778 ) 						#lineWidth: 1						#name: #position55 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.666667 0 0.111111 0 0.777778 ) 					#name: #click55 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.722222 6 0.0555556 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label55 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.666667 0 0.222222 0 0.777778 ) 						#lineWidth: 1						#name: #position56 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.666667 0 0.222222 0 0.777778 ) 					#name: #click56 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.722222 6 0.166667 15 0.722222 ) 							#label: '8' 							#style: #'Arbor-20'							#name: #label56 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.666667 0 0.333333 0 0.777778 ) 						#lineWidth: 1						#name: #position57 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.666667 0 0.333333 0 0.777778 ) 					#name: #click57 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.722222 6 0.277778 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label57 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.666667 0 0.444444 0 0.777778 ) 						#lineWidth: 1						#name: #position58 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.666667 0 0.444444 0 0.777778 ) 					#name: #click58 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.722222 6 0.388889 15 0.722222 ) 							#label: '6' 							#style: #'Arbor-20'							#name: #label58 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.666667 0 0.555556 0 0.777778 ) 						#lineWidth: 1						#name: #position59 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.666667 0 0.555556 0 0.777778 ) 					#name: #click59 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.722222 6 0.5 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label59 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.666667 0 0.666667 0 0.777778 ) 						#lineWidth: 1						#name: #position60 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.666667 0 0.666667 0 0.777778 ) 					#name: #click60 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.722222 6 0.611111 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label60 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.666667 0 0.777778 0 0.777778 ) 						#lineWidth: 1						#name: #position61 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.666667 0 0.777778 0 0.777778 ) 					#name: #click61 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.722222 6 0.722222 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label61 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.666667 0 0.888889 0 0.777778 ) 						#lineWidth: 1						#name: #position62 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.666667 0 0.888889 0 0.777778 ) 					#name: #click62 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.722222 6 0.833333 15 0.722222 ) 							#label: '3' 							#style: #'Arbor-20'							#name: #label62 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.666667 0 1.0 0 0.777778 ) 						#lineWidth: 1						#name: #position63 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.666667 0 1.0 0 0.777778 ) 					#name: #click63 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.722222 6 0.944444 15 0.722222 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label63 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.777778 0 0.111111 0 0.888889 ) 						#lineWidth: 1						#name: #position64 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.777778 0 0.111111 0 0.888889 ) 					#name: #click64 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.833333 6 0.0555556 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label64 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.777778 0 0.222222 0 0.888889 ) 						#lineWidth: 1						#name: #position65 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.777778 0 0.222222 0 0.888889 ) 					#name: #click65 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.833333 6 0.166667 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label65 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.777778 0 0.333333 0 0.888889 ) 						#lineWidth: 1						#name: #position66 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.777778 0 0.333333 0 0.888889 ) 					#name: #click66 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.833333 6 0.277778 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label66 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.777778 0 0.444444 0 0.888889 ) 						#lineWidth: 1						#name: #position67 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.777778 0 0.444444 0 0.888889 ) 					#name: #click67 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.833333 6 0.388889 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label67 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.777778 0 0.555556 0 0.888889 ) 						#lineWidth: 1						#name: #position68 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.777778 0 0.555556 0 0.888889 ) 					#name: #click68 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.833333 6 0.5 15 0.833333 ) 							#label: '8' 							#style: #'Arbor-20'							#name: #label68 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.777778 0 0.666667 0 0.888889 ) 						#lineWidth: 1						#name: #position69 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.777778 0 0.666667 0 0.888889 ) 					#name: #click69 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.833333 6 0.611111 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label69 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.777778 0 0.777778 0 0.888889 ) 						#lineWidth: 1						#name: #position70 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.777778 0 0.777778 0 0.888889 ) 					#name: #click70 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.833333 6 0.722222 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label70 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.777778 0 0.888889 0 0.888889 ) 						#lineWidth: 1						#name: #position71 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.777778 0 0.888889 0 0.888889 ) 					#name: #click71 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.833333 6 0.833333 15 0.833333 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label71 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.777778 0 1.0 0 0.888889 ) 						#lineWidth: 1						#name: #position72 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.777778 0 1.0 0 0.888889 ) 					#name: #click72 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.833333 6 0.944444 15 0.833333 ) 							#label: '2' 							#style: #'Arbor-20'							#name: #label72 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.888889 0 0.111111 0 1.0 ) 						#lineWidth: 1						#name: #position73 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.0 0 0.888889 0 0.111111 0 1.0 ) 					#name: #click73 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.0555556 -15 0.944444 6 0.0555556 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label73 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.888889 0 0.222222 0 1.0 ) 						#lineWidth: 1						#name: #position74 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.111111 0 0.888889 0 0.222222 0 1.0 ) 					#name: #click74 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.166667 -15 0.944444 6 0.166667 15 0.944444 ) 							#label: '6' 							#style: #'Arbor-20'							#name: #label74 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.888889 0 0.333333 0 1.0 ) 						#lineWidth: 1						#name: #position75 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.222222 0 0.888889 0 0.333333 0 1.0 ) 					#name: #click75 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.277778 -15 0.944444 6 0.277778 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label75 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.888889 0 0.444444 0 1.0 ) 						#lineWidth: 1						#name: #position76 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.333333 0 0.888889 0 0.444444 0 1.0 ) 					#name: #click76 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.388889 -15 0.944444 6 0.388889 15 0.944444 ) 							#label: '2' 							#style: #'Arbor-20'							#name: #label76 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.888889 0 0.555556 0 1.0 ) 						#lineWidth: 1						#name: #position77 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.444444 0 0.888889 0 0.555556 0 1.0 ) 					#name: #click77 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.5 -15 0.944444 6 0.5 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label77 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.888889 0 0.666667 0 1.0 ) 						#lineWidth: 1						#name: #position78 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.555556 0 0.888889 0 0.666667 0 1.0 ) 					#name: #click78 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.611111 -15 0.944444 6 0.611111 15 0.944444 ) 							#label: '9' 							#style: #'Arbor-20'							#name: #label78 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.888889 0 0.777778 0 1.0 ) 						#lineWidth: 1						#name: #position79 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.666667 0 0.888889 0 0.777778 0 1.0 ) 					#name: #click79 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.722222 -15 0.944444 6 0.722222 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label79 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.888889 0 0.888889 0 1.0 ) 						#lineWidth: 1						#name: #position80 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.777778 0 0.888889 0 0.888889 0 1.0 ) 					#name: #click80 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.833333 -15 0.944444 6 0.833333 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label80 ) 						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.888889 0 1.0 0 1.0 ) 						#lineWidth: 1						#name: #position81 ) 				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 0.888889 0 0.888889 0 1.0 0 1.0 ) 					#name: #click81 					#flags: 0 ) 						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 0.944444 -15 0.944444 6 0.944444 15 0.944444 ) 							#label: '' 							#style: #'Arbor-20'							#name: #label81 ) 				#(#{UI.InputEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 47 0.0555556 -12 0.0555556 78 0.0555556 13 0.0555556 ) 					#name: #digitEditor 					#flags: 24					#isOpaque: true 					#model: #currentDigit 					#tabable: false 					#isWrapped: false 					#isReadOnly: false 					#showHiddenCharacters: false 					#showLineStriping: false 					#autoAccept: true 					#showInputCursor: true 					#showSelection: true 					#numChars: 2 ) ) ) )</body>

<body package="Sudoku" selector="installSpec:">installSpec: aSudokuGrid		| code size blocksInLine blocksInColumn i matrix |	size := aSudokuGrid size.	blocksInLine := aSudokuGrid blocksInLine.	blocksInColumn := aSudokuGrid blocksInColumn.	matrix := aSudokuGrid matrix.	code := 'windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#properties: #(#{UI.PropertyListDictionary} #sizeType #lastSavedSize #positionType #lastSavedPosition #openType #advanced #sizeAutoSave true #positionAutoSave true ) 			#label: ''Sudoku'' 			#min: #(#{Core.Point} 200 200 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 621 305 1221 905 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #('.	i := 0.	(1 to: blocksInColumn) do: [ :line |		| top bottom |		top := line - 1 / blocksInColumn asFloat.		bottom := line / blocksInColumn asFloat.		(1 to: blocksInLine) do: [ :column |			| left right |			i := i + 1.			left := column - 1 / blocksInLine asFloat.			right := column / blocksInLine asFloat.			code := code, '					#(#{UI.RegionSpec} 						#layout: #(#{Graphics.LayoutFrame} 0 ', left printString, ' 0 ', top printString, ' 0 ', right printString ,' 0 ', bottom printString ,' ) 						#lineWidth: 2						#name: #block', i printString, ' ) '		]	].	i := 0.	(1 to: size) do: [ :y |		| top labelTop bottom |		top := y - 1 / size asFloat.		labelTop := y - 0.5 / size asFloat.		bottom := y / size asFloat.		(1 to: size) do: [ :x |			| left right label |			i := i + 1.			label := matrix at: i.			label = 0 ifTrue: [label := ''] ifFalse: [label := label printString].			left := x - 1 / size asFloat.			right := x / size asFloat.			code := code, '						#(#{UI.RegionSpec} 							#layout: #(#{Graphics.LayoutFrame} 0 ', left printString, ' 0 ', top printString, ' 0 ', right printString ,' 0 ', bottom printString ,' ) 						#lineWidth: 1						#name: #position', i printString, ' ) '.			code := code, '				#(#{UI.MappedClickWidgetSpec} 					#layout: #(#{Graphics.LayoutFrame} 0 ', left printString, ' 0 ', top printString, ' 0 ', right printString ,' 0 ', bottom printString ,' ) 					#name: #click', i printString, ' 					#flags: 0 ) '.			left := x - 0.5 / size asFloat.			code := code, '						#(#{UI.LabelSpec} 							#layout: #(#{Graphics.LayoutFrame} -6 ', left printString, ' -15 ', labelTop printString, ' 6 ', left printString, ' 15 ', labelTop printString, ' ) 							#label: ''', label, ''' 							#style: #''Arbor-20''							#name: #label', i printString, ' ) '		]	].	code := code, '				#(#{UI.InputEditorSpec} 					#layout: #(#{Graphics.LayoutFrame} 47 0.0555556 -12 0.0555556 78 0.0555556 13 0.0555556 ) 					#name: #digitEditor 					#flags: 24					#isOpaque: true 					#model: #currentDigit 					#tabable: false 					#isWrapped: false 					#isReadOnly: false 					#showHiddenCharacters: false 					#showLineStriping: false 					#autoAccept: true 					#showInputCursor: true 					#showSelection: true 					#numChars: 2 ) '.	code := code, ') ) )'.	^self class compile: code</body>
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>event evaluating</category>

<body package="Sudoku" selector="clickedIndex:">clickedIndex: anInteger	| value |	currentIndex := nil.	(self wrapperAt: #digitEditor) newBounds: ((self wrapperAt: ('position', anInteger printString) asSymbol) bounds).	(self wrapperAt: #digitEditor) beVisible.	value := (grid matrix at: anInteger) printString.	value = '0' ifTrue: [value := ''].	currentDigit value: value.	currentIndex := anInteger</body>

<body package="Sudoku" selector="doesNotUnderstand:">doesNotUnderstand: aMessage	| s i |	s := aMessage selector asString.	i := 0.	('clicked##' match: s) ifTrue: [		i := (s at: 9) asInteger - 48 + (10 * ((s at: 8) asInteger - 48))	] ifFalse: [			('clicked#' match: s) ifTrue: [			i := (s at: 8) asInteger - 48		]	].	(i between: 1 and: self grid size squared)		ifTrue: [^self clickedIndex: i]		ifFalse: [^super doesNotUnderstand: aMessage]</body>

<body package="Sudoku" selector="currentDigitChanged">currentDigitChanged	| i |	busy = true ifTrue: [^nil].	busy := true.	Transcript cr show: 'changed'.	currentDigit value size &gt; 1 ifTrue: [currentDigit value: (String with: currentDigit value last)].	currentDigit value size = 1 ifTrue: [		currentDigit value last asInteger - 48 printOn: Transcript.		((currentDigit value last asInteger - 48) between: 1 and: 9) ifFalse: [			currentDigit value: ''.			currentIndex ifNil: [^busy := false].			self setDigit: 0 at: currentIndex.		] ifTrue: [			currentIndex ifNil: [^busy := false].			self setDigit: (currentDigit value last asInteger - 48) at: currentIndex		].		(self widgetAt: #digitEditor) model: ((self widgetAt: #digitEditor) model).		^busy := false	].	currentIndex ifNil: [^busy := false].	currentDigit value isEmpty ifTrue: [		self setDigit: 0 at: currentIndex.		^busy := false	].	i := currentDigit value last asInteger - 48.	(i between: 1 and: 9) ifTrue: [self setDigit: i at: currentIndex].	^busy := false</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>accessing</category>

<body package="Sudoku" selector="grid">grid	^grid</body>

<body package="Sudoku" selector="grid:">grid: aSudokuGrid	grid := aSudokuGrid copy.	^self</body>

<body package="Sudoku" selector="currentDigit">currentDigit	^currentDigit</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>interface opening</category>

<body package="Sudoku" selector="open">open	| r |	self class installSpec: grid.	r := super open.	self colorize.	(1 to: grid size squared) do: [ :i |		(self widgetAt: ('click', (i printString)) asSymbol) when: #clicked send: ('clicked', (i printString)) asSymbol to: self	].	^r</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>changing</category>

<body package="Sudoku" selector="colorize">colorize	| i colour |	colour := Graphics.ColorValue brightness: 0.9.	i := 0.	(1 to: grid blocksInColumn) do: [ :j |		(1 to: grid blocksInLine) do: [ :k |			i := i + 1.			k + (j \\ 2) % 2 = 1 ifTrue: [				| block lp |				block := self wrapperAt: ('block', i printString) asSymbol.				lp := block lookPreferences backgroundColor: colour.				block lookPreferences: lp.			]		]	].	^self</body>

<body package="Sudoku" selector="setDigit:at:">setDigit: digit at: index	grid matrix at: index put: digit.	digit = 0 ifTrue: [^(self widgetAt: ('label', index printString) asSymbol) labelString: ''].	(self widgetAt: ('label', index printString) asSymbol) labelString: digit printString</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initialize">initialize	grid := SudokuGrid new.	currentDigit := '' asValue.	currentIndex := nil.	currentDigit onChangeSend: #currentDigitChanged to: self.	^self</body>
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>instance creation</category>

<body package="Sudoku" selector="newRandomSolution">newRandomSolution	^self newRandomSolution: self defaultSize</body>

<body package="Sudoku" selector="newEmpty:">newEmpty: size	^self basicNew initializeEmpty: size.</body>

<body package="Sudoku" selector="new">new	^self basicNew initializeEmpty: self defaultSize.</body>

<body package="Sudoku" selector="newRandomSolution:">newRandomSolution: size	^(self basicNew initializeEmpty: size) fillRandomSolution.</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>calculated</category>

<body package="Sudoku" selector="fromString:">fromString: aString	^self fromString: aString size: self defaultSize</body>

<body package="Sudoku" selector="fromString:size:">fromString: aString size: size	"instanciate a SudokuGrid from a string representation where '0', '.', ' ', or '-' represent an unfilled position"	| allowedCharacters matrix |	allowedCharacters := '0 .-' asOrderedCollection.	allowedCharacters addAll: ((1 to: (size min: 9)) collect: [ :x | Character codePoint: 48 + x]).	size &gt; 9 ifTrue: [		allowedCharacters addAll: ((1 to: size - 9) collect: [ :x | Character codePoint: 64 + x])	].	matrix := OrderedCollection new.	aString asArray do: [ :e |		(allowedCharacters includes: e) ifTrue: [matrix add: (String with: e) asNumber]	].	matrix size = size squared ifFalse: [SudokuStringParseError raise].	^(self basicNew matrix: matrix asArray) size: size</body>

<body package="Sudoku" selector="fromMatrix:">fromMatrix: matrix	^(self basicNew matrix: matrix) size: matrix size sqrt asInteger</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>controlling</category>

<body package="Sudoku" selector="setOpTimeout:">setOpTimeout: timeoutInMs	opCancelTimeInMs := Time millisecondClockValue + timeoutInMs</body>

<body package="Sudoku" selector="isOpTimeout">isOpTimeout	^Time millisecondClockValue &gt;= opCancelTimeInMs</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>constants</category>

<body package="Sudoku" selector="defaultSize">defaultSize	^9</body>

<body package="Sudoku" selector="availableSizes">availableSizes	^#(9)</body>
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>solver</category>

<body package="Sudoku" selector="findCandidates">findCandidates		| values i digit |	values := Dictionary new.	squares do: [ :s |		values add: s -&gt; digits asOrderedCollection	].	i := 0.	squares do: [ :s |		i := i + 1.		digit := matrix at: i.		((digits includes: digit) and: [(self assign: values square: s digit: digit) = false])			ifTrue: [^false]	].	^values</body>

<body package="Sudoku" selector="searchSolution:">searchSolution: values	| min max sq |	values = false ifTrue: [^false].	min := 10.	max := 1.	squares do: [ :s |		| vasSize |		vasSize := (values at: s) size.		vasSize &gt; max ifTrue: [max := vasSize].		(vasSize &gt; 1 and: [vasSize &lt; min]) ifTrue: [			min := vasSize.			sq := s		].	].	max = 1 ifTrue: [^values].	(values at: sq) do: [ :val |		| res |		res := self searchSolution: (self assign: (self cloneValues: values) square: sq digit: val).		res = false ifFalse: [^res]	].	^false</body>

<body package="Sudoku" selector="eliminate:square:digit:">eliminate: values square: square digit: digit		| vs |	vs := values at: square.	(vs includes: digit) ifFalse: [^values].	"already eliminated"	vs remove: digit.	vs isEmpty ifTrue: [^false]. "invalid input?"	"if there is only one value left, remove it from peers"	vs size = 1 ifTrue: [		| result vsFirst |		result := true.		vsFirst := vs first. "use the immutable value"		(peers at: square) keysDo: [ :s |			result := result &amp; ((self eliminate: values square: s digit: vsFirst) ~~ false)		].		result = false ifTrue: [^false]	].	(units at: square) do: [ :u |		| dplaces |		dplaces := OrderedCollection new.		u do: [ :sq2 |			((values at: sq2) includes: digit) ifTrue: [dplaces add: sq2].		].		dplaces size = 0 ifTrue: [^false].		dplaces size = 1 ifTrue: [			(self assign: values square: (dplaces at: 1) digit: digit) = false ifTrue: [^false]		]	].	^values</body>

<body package="Sudoku" selector="assign:square:digit:">assign: values square: square digit: digit		| result vs |	result := true.	vs := (values at: square) asArray.	vs do: [ :d |		d = digit ifFalse: [			result := result &amp; ((self eliminate: values square: square digit: d) ~~ false)		]	].	result ~~ false ifTrue: [^values] ifFalse: [^false]</body>

<body package="Sudoku" selector="cloneValues:">cloneValues: values	| result |	result := Dictionary new.	values keysDo: [ :k | result add: k -&gt; ((values at: k) copy)].	^result</body>

<body package="Sudoku" selector="solve">solve	| solved solvedStr |	solved := self searchSolution: self findCandidates.	solvedStr := ''.	squares do: [ :k |		solvedStr := solvedStr, (solved at: k) first printString	].	^SudokuGrid fromString: solvedStr</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>accessing</category>

<body package="Sudoku" selector="matrix">matrix	^matrix</body>

<body package="Sudoku" selector="blocksInLine">blocksInLine	^blocksInLine</body>

<body package="Sudoku" selector="matrix:">matrix: anArray	matrix := anArray.	^self</body>

<body package="Sudoku" selector="blockHeight">blockHeight	^blockHeight</body>

<body package="Sudoku" selector="blocksInColumn">blocksInColumn	^blocksInColumn</body>

<body package="Sudoku" selector="blockWidth">blockWidth	^blockWidth</body>

<body package="Sudoku" selector="size">size	^size</body>

<body package="Sudoku" selector="size:">size: gridSize	(self class availableSizes includes: gridSize)		ifFalse: [SudokuSizeNotAvailableError raise].	size := gridSize.	self computeProperties.	((matrix class ~~ Array) or: [matrix size ~~ size squared]) ifTrue: [		matrix := Array new: size squared.		(1 to: matrix size) do: [ :i | matrix at: i put: 0]	].	^self</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>algorithmics</category>

<body package="Sudoku" selector="lineAt:">lineAt: matrixIndex	^(matrixIndex - 1 // size) + 1</body>

<body package="Sudoku" selector="cross:with:">cross: a with: b	| crossed |	crossed := OrderedCollection new.	a do: [ :i |		b do: [ :j | crossed add: i, j]	].	^crossed</body>

<body package="Sudoku" selector="computeProperties">computeProperties	"current implementation accepts size 9 only"	| rrows ccols unitList |		"hard-coded for size 9"	blockWidth := 3.	blocksInColumn := 3.	blockHeight := 3.	blocksInLine := 3.	rrows := #(#('A' 'B' 'C') #('D' 'E' 'F') #('G' 'H' 'I')).	ccols := #(#('1' '2' '3') #('4' '5' '6') #('7' '8' '9')).		rows := (1 to: size) collect: [ :x | String with: (Character codePoint: 64 + x)].	cols := (1 to: size) collect: [ :x | x printString ].	digits := (1 to: size) asArray.	squares := self cross: rows with: cols.	unitList := OrderedCollection new.	units := Dictionary new.	peers := Dictionary new.	cols do: [ :c |		unitList add: (self cross: rows with: (Array with: c))	].	rows do: [ :r |		unitList add: (self cross: (Array with: r) with: cols)	].	rrows do: [ :rs |		ccols do: [ :cs |			unitList add: (self cross: rs with: cs)		]	].	squares do: [ :s |		units add: s -&gt; OrderedCollection new.		unitList do: [ :u |			(u includes: s) ifTrue: [(units at: s) add: u]		]	].	squares do: [ :s |		peers add: s -&gt; Dictionary new.		(units at: s) do: [ :u |			u do: [ :s2 |				s2 = s ifFalse: [(peers at: s) add: s2 -&gt; true]			]		]	].	^self</body>

<body package="Sudoku" selector="columnAt:">columnAt: matrixIndex	^(matrixIndex - 1) \\ size + 1</body>

<body package="Sudoku" selector="fillRandomSolution">fillRandomSolution	| candidates c |	candidates := Array new: matrix size.	(1 to: matrix size) do: [ :j |		candidates at: j put: digits asOrderedCollection	].	c := 1.	[c = 82] whileFalse: [		| cCandidates i z |		cCandidates := candidates at: c.		cCandidates isEmpty ifFalse: [			i := Security.Rand between: 1 and: cCandidates size.			z := cCandidates at: i.			cCandidates removeIndex: i.			((peers at: (squares at: c)) keys detect: [ :k | z = (matrix at: (squares indexOf: k))] ifNone: []) isNil ifTrue: [				"No conflict, go foward"				matrix at: c put: z.				c := c + 1			]		] ifTrue: [			cCandidates := digits asOrderedCollection.			candidates at: c put: cCandidates.			matrix at: (c - 1) put: 0.			"All candidates conflict, go back"			c := c - 1		]	].	^self</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>digHoles</category>

<body package="Sudoku" selector="findWorkingSquare:">findWorkingSquare: candidates	| minCandidates |	minCandidates := size.	candidates do: [ :e |		| eSize |		eSize := e size.		eSize &gt;= 2 ifTrue: [minCandidates := eSize min: minCandidates]	].	candidates keysDo: [ :square |		(candidates at: square) size = minCandidates ifTrue: [^square]	].	^nil</body>

<body package="Sudoku" selector="digHoles:">digHoles: maximumClues	| clues attempts |	(maximumClues between: 28 and: size squared) ifFalse: [^SudokuError raise].	clues := nil.	attempts := 0.	[clues isNil and: [attempts &lt; 100]] whileTrue: [		self class setOpTimeout: attempts * 50 + 2000.		[clues := self createCluesPrivate: maximumClues]			on: Kernel.TimeoutExceeded do: [].		attempts := attempts + 1	].	clues isNil ifTrue: [^Kernel.TimeoutExceeded raise].	^self class fromMatrix: clues</body>

<body package="Sudoku" selector="forSolutions:do:">forSolutions: candidates do: block	"assuming the grid is valid; stops if block returns false"	| activeSquare newCandidates |	self class isOpTimeout ifTrue: [Kernel.TimeoutExceeded raise].	activeSquare := self findWorkingSquare: candidates.	activeSquare isNil ifTrue: [		block value == true ifTrue: [^nil] ifFalse: [^candidates]	].	(candidates at: activeSquare) do: [ :guess |		newCandidates := self assign: (self cloneValues: candidates) square: activeSquare digit: guess.		newCandidates ~~ false ifTrue: [			(self forSolutions: newCandidates do: block) ifNotNil: [^newCandidates]		]	].	^nil</body>

<body package="Sudoku" selector="hasUniqueSolution">hasUniqueSolution	| count |	count := 0.	self forSolutions: (self findCandidates) do: [		count := count + 1.		count &lt; 2	].	^count == 1</body>

<body package="Sudoku" selector="hasManySolutions">hasManySolutions	| count |	count := 0.	self forSolutions: (self findCandidates) do: [		count := count + 1.		count &lt; 2	].	^count &gt; 1</body>

<body package="Sudoku" selector="createCluesPrivate:">createCluesPrivate: maximumClues	| clues leftCount r i j clueIndex workingClues result |	clues := matrix copy.	result := -1.	[result == -1] whileTrue: [				"pick a random cell to blank"		leftCount := 0.		clues do: [ :c |			c = 0 ifFalse: [leftCount := leftCount + 1]		].		r := Security.Rand between: 1 and: leftCount.		i := 0.		j := 0.		clues do: [ :c |			j := j + 1.			c = 0 ifFalse: [i := i + 1].			i = r ifTrue: [clueIndex := j]		].			workingClues := clues copy.		workingClues at: clueIndex put: 0.		((self class fromMatrix: workingClues) hasManySolutions) ifTrue: [			maximumClues = 0 ifTrue: [^result := clues]		] ifFalse: [			clues := workingClues.			i := 0.			clues do: [ :c |				c = 0 ifFalse: [i := i + 1]			].			i &lt;= maximumClues ifTrue: [^result := clues]		]	].	^result</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>copying</category>

<body package="Sudoku" selector="copy">copy	^self class fromMatrix: self matrix copy</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>checking</category>

<body package="Sudoku" selector="isValid:ignoreEmpty:">isValid: aSudokuGrid ignoreEmpty: ignoreEmpty		ignoreEmpty		ifTrue: [			| matrix2 i |			i := 0.			matrix2 := aSudokuGrid matrix.			self matrix do: [ :e |				i := i + 1.				(e ~~ 0 and: [e ~~ (matrix2 at: i)])					ifTrue: [^false]			]		]		ifFalse: [^self matrix = aSudokuGrid matrix].		^true</body>

<body package="Sudoku" selector="isValid:">isValid: aSudokuGrid		^self isValid: aSudokuGrid ignoreEmpty: false</body>

<body package="Sudoku" selector="isComplete">isComplete	matrix do: [:e |		e = 0 ifTrue: [^false]	].	^true</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initializeEmpty:">initializeEmpty: gridSize	^self size: gridSize.</body>
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>converting</category>

<body package="Sudoku" selector="asString">asString	| s |	s := ''.	matrix do: [ :e |		s := s, e printString	].	^s</body>
</methods>



<component-created>
<name>Security</name> <type>package</type>
</component-created><!-- Package Security -->


<component-property>
<name>Security</name> <type>package</type>
<property>comment</property> <value>'Classes based on or extending the Smalltalk.Security package.'</value>
</component-property>

<class>
<name>Rand</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars>cache </class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Security</package>
</attributes>
</class>

<comment>
<class-id>Rand</class-id>
<body>Random number utilities based on `Security.DSSRandom default`.For better security the default generator must be reseeded with data that cannot be known by an attacker. It must be reseeded before an attacker could determine the current seed based on the output of the generator algorithm. The list of generated numbers can also be predicted by knowing the seed and the algorithm, and will eventually repeat themselves.Security Guide: http://www.cincomsmalltalk.com/main/documentation/VisualWorks/SecurityGuide.pdfClass Instance Variables:	cache &lt;OrderedCollection&gt;	cache of random bits gathered from the default Security.DSSRandom generator</body>
</comment>

<methods>
<class-id>Rand class</class-id> <category>instance creation</category>

<body package="Security" selector="next:">next: n	| bitSize r from to |	n &lt; 0 ifTrue: [^0 - (self next: 0 - n)].	n = 0 ifTrue: [^nil].	n = 1 ifTrue: [^0].	bitSize := n highBit.	cache isNil ifTrue: [cache := OrderedCollection new].	cache size &lt; bitSize ifTrue: [		Security.DSSRandom default next asByteArray do: [ :byte |			(1 to: 8) do: [ :i |	cache add: (byte bitAt: i)]		]	].	r := 0.	to := cache size.	from := to - bitSize + 1.	(from to: to) do: [ :i |		r := r bitAt: i - from + 1 put: (cache at: i)	].	cache removeFrom: from to: to.	r &gt;= n ifTrue: [^self next: n].	^r</body>

<body package="Security" selector="next">next	^self next: self randmax + 1</body>

<body package="Security" selector="between:and:">between: a and: b		a = b ifTrue: [^a].	a &gt; b ifTrue: [^self between: b and: a].	^(self next: b - a + 1) + a</body>
</methods>

<methods>
<class-id>Rand class</class-id> <category>changing</category>

<body package="Security" selector="clearCache">clearCache	cache := nil</body>
</methods>

<methods>
<class-id>Rand class</class-id> <category>constants</category>

<body package="Security" selector="randmax">randmax	^18446744073709551615</body>
</methods>



<bundle-structure>
<name>Oxiane</name> <structure>#(#(#package 'BrainFuck') #(#package 'IO') #(#package 'Sudoku') #(#package 'Security'))</structure>
</bundle-structure>

</st-source>
