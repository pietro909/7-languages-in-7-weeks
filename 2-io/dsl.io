OperatorTable addAssignOperator(":", "atPutNumber")

curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage(arg)
    )
    r
)

Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)

fileName := System args rest first 
s := File with(fileName) openForReading contents
phoneNumbers := doString(s)
phoneNumbers asJson 
