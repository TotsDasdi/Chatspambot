set shell = createobject ("wscript.shell")
x=msgbox("Chatspambot programmed by dasdiii.exe", 0+0, "Chatspambot")
strtext = inputbox("Deine Nachricht:")
IF strtext=FALSE THEN
wscript.quit
end if
strtimes = inputbox("Wie oft soll der Bot spammen? (Bitte nur Zahlen)")
IF strtimes=FALSE THEN
wscript.quit
end if
if not isnumeric(strtimes) then
x=msgbox("Die Anzahl der Nachrichten darf nur Zahlen enthalten!", 0+16, "Chatspambot")
wscript.quit
end if
x=msgbox("10 Sekunden Countdown bis zur Attacke, nachdem sie mit OK bestaetigen. Klicken sie auf das Nachrichtenfenster.", 0+0, "Chatspambot") 
wscript.sleep( 10000 )
for i=1 to strtimes
shell.sendkeys(strtext & "{enter}")
wscript.sleep(strdelay)
next