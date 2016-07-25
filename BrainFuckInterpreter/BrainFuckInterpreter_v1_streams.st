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

<body package="BrainFuck" selector="initialize">initialize
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

<body package="BrainFuck" selector="mayResume">mayResume
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckInputError</class-id>
<body>BrainFuckInputError is raised when the BrainFuckInterpreter can not read or block on stdin.</body>
</comment>

<methods>
<class-id>BrainFuckInputError</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
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

<body package="BrainFuck" selector="new">new
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckInterpreter</class-id>
<body>Interpretes BrainFuck code.
</comment>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>accessing</category>

<body package="BrainFuck" selector="debugMode">debugMode

<body package="BrainFuck" selector="debugMode:">debugMode: anObject

<body package="BrainFuck" selector="memPtr">memPtr

<body package="BrainFuck" selector="memPtr:">memPtr: anObject

<body package="BrainFuck" selector="memory">memory

<body package="BrainFuck" selector="memory:">memory: t1 

<body package="BrainFuck" selector="source">source

<body package="BrainFuck" selector="source:">source: t1 

<body package="BrainFuck" selector="status">status

<body package="BrainFuck" selector="status:">status: t1 

<body package="BrainFuck" selector="stdin">stdin

<body package="BrainFuck" selector="stdin:">stdin: t1 

<body package="BrainFuck" selector="stdout">stdout

<body package="BrainFuck" selector="stdout:">stdout: t1 
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>interpreter</category>

<body package="BrainFuck" selector="debug">debug

<body package="BrainFuck" selector="executeInstruction">executeInstruction

<body package="BrainFuck" selector="start">start
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>constants</category>

<body package="BrainFuck" selector="maxExecutionTimeInMs">maxExecutionTimeInMs

<body package="BrainFuck" selector="memorySize">memorySize
</methods>

<methods>
<class-id>BrainFuckInterpreter</class-id> <category>private</category>

<body package="BrainFuck" selector="beginLoop">beginLoop

<body package="BrainFuck" selector="decrementPointer">decrementPointer

<body package="BrainFuck" selector="decrementValueAtPointer">decrementValueAtPointer

<body package="BrainFuck" selector="endLoop">endLoop

<body package="BrainFuck" selector="incrementPointer">incrementPointer

<body package="BrainFuck" selector="incrementValueAtPointer">incrementValueAtPointer

<body package="BrainFuck" selector="outputCharacterAtPointer">outputCharacterAtPointer

<body package="BrainFuck" selector="readCharacterIntoPointer">readCharacterIntoPointer
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

<body package="BrainFuck" selector="new">new
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckInterpreterExample</class-id>
<body>Interpretes BrainFuck source code.</body>
</comment>

<methods>
<class-id>BrainFuckInterpreterExample</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
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

<body package="BrainFuck" selector="new">new
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<comment>
<class-id>BrainFuckSyntaxError</class-id>
<body>BrainFuckSyntaxError is raised when a syntax error arises i.e. when a matching "]" is not found.</body>
</comment>

<methods>
<class-id>BrainFuckSyntaxError</class-id> <category>initialize-release</category>

<body package="BrainFuck" selector="initialize">initialize
</methods>

</st-source>