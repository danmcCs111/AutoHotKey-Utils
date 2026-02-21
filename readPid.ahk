
readPid(fp)
{
	filePath := fp
	try {
		fileContent := FileRead(filePath)
	} catch as ex {
		MsgBox 'Error reading file: ' ex.Message
	}
	return fileContent
}
