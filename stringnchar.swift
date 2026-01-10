//basic multiline
let quote = """
baby shark
do
do
dodo
dodo
"""

//special char \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation mark) and \' (single quotation mark)

let wiseWords = "\n\t\"Imagination is more important than knowledge\" \u{1F496} - Einstein"
print(wiseWords)

//isTempty
let emptyString = ""
if emptyString.isEmpty {
    print("Nothing to see here")
}

//string can be  += like wtf damnn
var name = "Gleen"
name += " Ryan"
print("Hello, \(name)!")

//char to string
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
print(catCharacters[0])