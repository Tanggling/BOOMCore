SOURCE_FILE = hello.cpp
TAR_PROCEDURE = hello


run:$(TAR_PROCEDURE)
	./$(TAR_PROCEDURE)

$(TAR_PROCEDURE):$(SOURCE_FILE)
	g++ $(SOURCE_FILE) -std=c++14 -lsystemc -o $(TAR_PROCEDURE)

clean:
	rm -rf $(TAR_PROCEDURE)