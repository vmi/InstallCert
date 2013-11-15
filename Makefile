TARGET = installcert

$(TARGET): stub.sh target/$(TARGET).jar
	cat stub.sh ./target/$(TARGET).jar > $(TARGET)
	chmod +x $(TARGET)

target/$(TARGET).jar::
	mvn package

clean::
	rm -f $(TARGET)
	mvn clean
