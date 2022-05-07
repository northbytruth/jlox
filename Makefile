run: build runInterpeter

runInterpeter:
	@echo "Starting Interpreter"
	@java -jar bin/Lox.jar

build:
	@echo "Building jlox"
	@javac com/craftinginterpreters/lox/*.java -d bin/class
	@jar cfe bin/Lox.jar com.craftinginterpreters.lox.Lox -C bin/class .


generate:
	@echo "Generate AST"
	@javac com/craftinginterpreters/tool/*.java -d bin/class
	@java -cp "bin/class" com.craftinginterpreters.tool.GenerateAst "com/craftinginterpreters/lox"
