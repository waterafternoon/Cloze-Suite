import re
import time

filename = "Civics.txt"
exportname = "export" + filename

filestring = open(filename,"r",errors='surrogateescape').read()

regex_undoubleline = re.compile("(\r|\n\n)")
regex_doublespace = re.compile("  ")
regex_dashbreak = re.compile("(-\n|- \n)")
regex_spacebreak = re.compile("( \n)")
regex_letterbreak = re.compile("(\w)\n(\w)")
regex_punctbreak = re.compile(r"(,|:)\n")
regex_noline = re.compile("\n")

expregex_die = re.compile(r"(.{3} )die( .*? )")
expregex_seepage = re.compile("\(see page \d{1,4}\)")
expregex_widi = re.compile(" widi ")

regex_sepsentences = re.compile(r"(\.\"|\.)")
regex_three_to_two = re.compile(r"\n\n\n")
regex_startspace = re.compile(r"\n ")
regex_spacepunct = re.compile(" (\.|,|\))")
regex_ellipsis = re.compile("\n\.")



for x in range(6): filestring = regex_undoubleline.sub("\n",filestring)
for x in range(6): filestring = regex_doublespace.sub(" ",filestring)
filestring = regex_dashbreak.sub("",filestring)
filestring = regex_spacebreak.sub(r"\n",filestring)
filestring = regex_letterbreak.sub(r"\1 \2",filestring)
filestring = regex_punctbreak.sub(r"\1 ",filestring)

filestring = regex_sepsentences.sub(r"\1\n\n",filestring)
filestring = regex_three_to_two.sub("\n\n",filestring)
filestring = regex_startspace.sub("\n",filestring)

filestring = expregex_die.sub(r"\1the\2",filestring)
filestring = expregex_seepage.sub("",filestring)
filestring = expregex_widi.sub(r"with",filestring)

filestring = regex_sepsentences.sub(r"\1\n\n",filestring)
for x in range(2): filestring = regex_three_to_two.sub("\n\n",filestring)
filestring = regex_startspace.sub("\n",filestring)
filestring = regex_spacepunct.sub(r"\1",filestring)
for x in range(3):filestring = regex_ellipsis.sub(".",filestring)

'''
regex_test = re.compile(" widi ")
test_results = regex_test.findall(filestring)
for result in test_results: print(result)
print(len(test_results))
'''

#print(filestring)
with open(exportname, "w+",errors='surrogateescape') as e: e.write(filestring)