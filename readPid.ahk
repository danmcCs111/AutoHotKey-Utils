
readPid()
{
	filePath := 'pid.txt' ; Define the file path
	try {
		fileContent := FileRead(filePath)
	} catch as ex {
		MsgBox 'Error reading file: ' ex.Message
	}
	return fileContent
}
