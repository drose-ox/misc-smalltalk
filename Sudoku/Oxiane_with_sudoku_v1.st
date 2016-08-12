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
<body>Interpretes BrainFuck code.
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
<body>BrainFuckInterpreterGuiApplication has not been commented.  The comment should state the purpose of the class and also explain any unobvious aspects of the implementation.
</comment>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterExample class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterExample</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInputError class</class-id> <category>testing</category>

<body package="BrainFuck" selector="mayResume">mayResume
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckSyntaxError class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="new">new
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication class</class-id> <category>interface specs</category>

<body package="BrainFuck" selector="windowSpec">windowSpec
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication class</class-id> <category>converting</category>

<body package="BrainFuck" selector="asMscp1252RejectIllegal:">asMscp1252RejectIllegal: string
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>event evaluating</category>

<body package="BrainFuck" selector="srcCodeChanged">srcCodeChanged

<body package="BrainFuck" selector="actionButtonPressed">actionButtonPressed

<body package="BrainFuck" selector="inputTextChanged">inputTextChanged
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
+++++++++[ 	&gt;+++++++&gt;++++++++++&gt;+++&gt;+&lt;&lt;&lt;&lt;- ]
++++++.			''l'' = 108 (101 plus 7)
++.				''o'' = 111 (108 plus 3)
++.				''r'' = 114 (111 plus 3)
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>aspects</category>

<body package="BrainFuck" selector="inputText">inputText

<body package="BrainFuck" selector="srcCode">srcCode
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreterGuiApplication</class-id> <category>private</category>

<body package="BrainFuck" selector="actionButtonLabel">actionButtonLabel
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckOutputOverflowError</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter class</class-id> <category>instance creation</category>

<body package="BrainFuck" selector="interpret:in:out:">interpret: srcCodeExternalReadStream in: inExternalReadStream out: outExternalWriteStream

<body package="BrainFuck" selector="new">new
</methods>


<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>interpreter</category>

<body package="BrainFuck" selector="start">start

<body package="BrainFuck" selector="terminate">terminate

<body package="BrainFuck" selector="debug">debug

<body package="BrainFuck" selector="executeInstruction">executeInstruction
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>accessing</category>

<body package="BrainFuck" selector="debugMode:">debugMode: anObject

<body package="BrainFuck" selector="memPtr:">memPtr: anObject

<body package="BrainFuck" selector="out">out

<body package="BrainFuck" selector="memPtr">memPtr

<body package="BrainFuck" selector="in">in

<body package="BrainFuck" selector="status:">status: anObject

<body package="BrainFuck" selector="maxExecutionTime:">maxExecutionTime: anObject

<body package="BrainFuck" selector="memory:">memory: aByteArray

<body package="BrainFuck" selector="maxExecutionTime">maxExecutionTime

<body package="BrainFuck" selector="srcCode">srcCode

<body package="BrainFuck" selector="debugMode">debugMode

<body package="BrainFuck" selector="memory">memory

<body package="BrainFuck" selector="in:">in: anObject

<body package="BrainFuck" selector="out:">out: anObject

<body package="BrainFuck" selector="srcCode:">srcCode: anObject

<body package="BrainFuck" selector="status">status
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>constants</category>

<body package="BrainFuck" selector="maxOutputSize">maxOutputSize

<body package="BrainFuck" selector="memorySize">memorySize
</methods>

<methods>
<class-id>Oxiane.BrainFuck.BrainFuckInterpreter</class-id> <category>private</category>

<body package="BrainFuck" selector="decrementValueAtPointer">decrementValueAtPointer

<body package="BrainFuck" selector="beginLoop">beginLoop

<body package="BrainFuck" selector="outputCharacterAtPointer">outputCharacterAtPointer

<body package="BrainFuck" selector="nextIn">nextIn

<body package="BrainFuck" selector="endLoop">endLoop

<body package="BrainFuck" selector="incrementPointer">incrementPointer

<body package="BrainFuck" selector="incrementValueAtPointer">incrementValueAtPointer

<body package="BrainFuck" selector="readCharacterIntoPointer">readCharacterIntoPointer

<body package="BrainFuck" selector="decrementPointer">decrementPointer

<body package="BrainFuck" selector="nextInstruction">nextInstruction
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
<body>Gives access to two streams connected by a Socket.
</comment>

<methods>
<class-id>Oxiane.IO.SocketStreamPair class</class-id> <category>instance creation</category>

<body package="IO" selector="new">new
</methods>


<methods>
<class-id>Oxiane.IO.SocketStreamPair</class-id> <category>initialize-release</category>

<body package="IO" selector="close">close

<body package="IO" selector="closed">closed

<body package="IO" selector="initialize">initialize
</methods>

<methods>
<class-id>Oxiane.IO.SocketStreamPair</class-id> <category>accessing</category>

<body package="IO" selector="writeEnd">writeEnd

<body package="IO" selector="readEnd">readEnd
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
<body>SudokuEditor is a GUI application to play with a Sudoku puzzle.
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
<body>Contains data about a sudoku grid (numbers or blanks in columns and rows), and utilities to work on this data.
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
<body>SudokuViewer is a GUI application to view a SudokuGrid.
</comment>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer class</class-id> <category>class initialization</category>

<body package="Sudoku" selector="with:">with: aSudokuGrid
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer class</class-id> <category>interface specs</category>

<body package="Sudoku" selector="installSpec:">installSpec: aSudokuGrid

<body package="Sudoku" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>interface opening</category>

<body package="Sudoku" selector="open">open
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>accessing</category>

<body package="Sudoku" selector="grid">grid

<body package="Sudoku" selector="grid:">grid: aSudokuGrid
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>changing</category>

<body package="Sudoku" selector="colorize">colorize
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuViewer</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initialize">initialize
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuStringParseError</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initialize">initialize
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuEditor class</class-id> <category>class initialization</category>

<body package="Sudoku" selector="with:">with: aSudokuGrid
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor class</class-id> <category>interface specs</category>

<body package="Sudoku" selector="windowSpec">windowSpec

<body package="Sudoku" selector="installSpec:">installSpec: aSudokuGrid
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>event evaluating</category>

<body package="Sudoku" selector="clickedIndex:">clickedIndex: anInteger

<body package="Sudoku" selector="doesNotUnderstand:">doesNotUnderstand: aMessage

<body package="Sudoku" selector="currentDigitChanged">currentDigitChanged
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>accessing</category>

<body package="Sudoku" selector="grid">grid

<body package="Sudoku" selector="grid:">grid: aSudokuGrid

<body package="Sudoku" selector="currentDigit">currentDigit
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>interface opening</category>

<body package="Sudoku" selector="open">open
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>changing</category>

<body package="Sudoku" selector="colorize">colorize

<body package="Sudoku" selector="setDigit:at:">setDigit: digit at: index
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuEditor</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initialize">initialize
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>instance creation</category>

<body package="Sudoku" selector="newRandomSolution">newRandomSolution

<body package="Sudoku" selector="newEmpty:">newEmpty: size

<body package="Sudoku" selector="new">new

<body package="Sudoku" selector="newRandomSolution:">newRandomSolution: size
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>calculated</category>

<body package="Sudoku" selector="fromString:">fromString: aString

<body package="Sudoku" selector="fromString:size:">fromString: aString size: size

<body package="Sudoku" selector="fromMatrix:">fromMatrix: matrix
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>controlling</category>

<body package="Sudoku" selector="setOpTimeout:">setOpTimeout: timeoutInMs

<body package="Sudoku" selector="isOpTimeout">isOpTimeout
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid class</class-id> <category>constants</category>

<body package="Sudoku" selector="defaultSize">defaultSize

<body package="Sudoku" selector="availableSizes">availableSizes
</methods>


<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>solver</category>

<body package="Sudoku" selector="findCandidates">findCandidates

<body package="Sudoku" selector="searchSolution:">searchSolution: values

<body package="Sudoku" selector="eliminate:square:digit:">eliminate: values square: square digit: digit

<body package="Sudoku" selector="assign:square:digit:">assign: values square: square digit: digit

<body package="Sudoku" selector="cloneValues:">cloneValues: values

<body package="Sudoku" selector="solve">solve
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>accessing</category>

<body package="Sudoku" selector="matrix">matrix

<body package="Sudoku" selector="blocksInLine">blocksInLine

<body package="Sudoku" selector="matrix:">matrix: anArray

<body package="Sudoku" selector="blockHeight">blockHeight

<body package="Sudoku" selector="blocksInColumn">blocksInColumn

<body package="Sudoku" selector="blockWidth">blockWidth

<body package="Sudoku" selector="size">size

<body package="Sudoku" selector="size:">size: gridSize
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>algorithmics</category>

<body package="Sudoku" selector="lineAt:">lineAt: matrixIndex

<body package="Sudoku" selector="cross:with:">cross: a with: b

<body package="Sudoku" selector="computeProperties">computeProperties

<body package="Sudoku" selector="columnAt:">columnAt: matrixIndex

<body package="Sudoku" selector="fillRandomSolution">fillRandomSolution
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>digHoles</category>

<body package="Sudoku" selector="findWorkingSquare:">findWorkingSquare: candidates

<body package="Sudoku" selector="digHoles:">digHoles: maximumClues

<body package="Sudoku" selector="forSolutions:do:">forSolutions: candidates do: block

<body package="Sudoku" selector="hasUniqueSolution">hasUniqueSolution

<body package="Sudoku" selector="hasManySolutions">hasManySolutions

<body package="Sudoku" selector="createCluesPrivate:">createCluesPrivate: maximumClues
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>copying</category>

<body package="Sudoku" selector="copy">copy
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>checking</category>

<body package="Sudoku" selector="isValid:ignoreEmpty:">isValid: aSudokuGrid ignoreEmpty: ignoreEmpty

<body package="Sudoku" selector="isValid:">isValid: aSudokuGrid

<body package="Sudoku" selector="isComplete">isComplete
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>initialize-release</category>

<body package="Sudoku" selector="initializeEmpty:">initializeEmpty: gridSize
</methods>

<methods>
<class-id>Oxiane.Sudoku.SudokuGrid</class-id> <category>converting</category>

<body package="Sudoku" selector="asString">asString
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
<body>Random number utilities based on `Security.DSSRandom default`.
</comment>

<methods>
<class-id>Rand class</class-id> <category>instance creation</category>

<body package="Security" selector="next:">next: n

<body package="Security" selector="next">next

<body package="Security" selector="between:and:">between: a and: b
</methods>

<methods>
<class-id>Rand class</class-id> <category>changing</category>

<body package="Security" selector="clearCache">clearCache
</methods>

<methods>
<class-id>Rand class</class-id> <category>constants</category>

<body package="Security" selector="randmax">randmax
</methods>



<bundle-structure>
<name>Oxiane</name> <structure>#(#(#package 'BrainFuck') #(#package 'IO') #(#package 'Sudoku') #(#package 'Security'))</structure>
</bundle-structure>

</st-source>