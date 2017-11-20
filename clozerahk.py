#!/usr/bin/env python3

import sys
print(sys.version)
import pyperclip
import re
from time import sleep
#from autocorrect import spell

print("hi!")
sleep(5)
def autoformat(empty_variable):
	filestring = pyperclip.paste()
	
	regex_spacebreak = re.compile("( $)")
	regex_punctbreak = re.compile(r"(,|:)$")
	regex_doublespace = re.compile("  ")
	
	regex_startspace = re.compile(r"^ ")
	regex_spacepunct = re.compile(" (\.|,|\))")
	regex_linebreak = re.compile("(\n|\r)")
	
	filestring = regex_spacebreak.sub(r"",filestring)
	filestring = regex_punctbreak.sub(r".",filestring)
	for x in range(3): 
		filestring = regex_doublespace.sub(" ",filestring)
	
	filestring = regex_startspace.sub("",filestring)
	filestring = regex_spacepunct.sub(r"\1",filestring)
	filestring = regex_linebreak.sub(" ",filestring)
	
	#filestring = filestring.replace("di","th")
	filestring = filestring.replace("ii","h")
	
	regex_uncloze = re.compile("{{c\d::")
	filestring = regex_uncloze.sub(r"",filestring)
	
	regex_uncloze2 = re.compile("}}")
	filestring = regex_uncloze2.sub(r"",filestring)
	for x in range(3): 
		filestring = regex_doublespace.sub(" ",filestring)
	
	pyperclip.copy(filestring)
	

def splitsentence(empty_variable):
	filestring = pyperclip.paste()
	print(filestring,"done")
	regex_punct = re.compile(r"\.")
	regex_startspace = re.compile(r"\n ")
	
	filestring = regex_punct.sub(r".\n\n",filestring)
	filestring = regex_startspace.sub("\n",filestring)
	
	pyperclip.copy(filestring)

def splitbypunct(empty_variable):
	filestring = pyperclip.paste()
	print(filestring,"done")
	regex_punct = re.compile(r"(,|:|\.)")
	filestring = regex_punct.sub("\n",filestring)

	pyperclip.copy(filestring)

def spelling(empty_variable):
	filestring = pyperclip.paste()
	filestring = spell(filestring)
	pyperclip.copy(filestring)

def despace(empty_variable):
	filestring = pyperclip.paste()
	regex_spacebreak = re.compile(" ")
	filestring = regex_spacebreak.sub("",filestring)
	pyperclip.copy(filestring)
	
def wheretogo(command, empty_variable):
	if command == "autoc": 
		autoformat(empty_variable)
	elif command == "splitsentences":
		splitsentence(empty_variable)
	elif command == "splitbypunct":
		splitbypunct(empty_variable)
	elif command == "spelling":
		spelling(empty_variable)
	elif command == "despace":
		despace(empty_variable)
	elif command == "test":
		sys.exit("Works")
	else:
		pyperclip.copy(pyperclip.paste()+"oops")

if __name__ == '__main__':
    wheretogo(str(sys.argv[1]), str(sys.argv[2]))
