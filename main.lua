local replacements = {
    a = '▀ ',
    b = '░ ',
    c = '▒ ',
    d = '▓ ',
    e = '■ ',
    f = '□ ',
    g = '▪ ',
    h = '▐ ',
    i = '꜡ ',
    j = ' ▫ ',
    k = '▬ ',
    l = '▲ ',
    m = '► ',
    n = '¶ ',
    o = '▼ ',
    p = '◄ ',
    q = '╙ ',
    r = '◊ ',
    s = '֎ ',
    t = '○ ',
    u = '● ',
    v = '♫ ',
    w = '▄ ',
    x = '♯ ',
    y = '◘ ',
    x = '◙ ',
	exclaim = '⅓ ',
	paren = '⅔ ',
	cparen = '⅛ ',
	brack = '⅜ ',
	cbrack = '⅞ ',
	dqou = '‼ ',
	qou = '‡ '
}
local code = 'print("Hello World!")'


local function Obfusticate(str)
    if type(str) ~= 'string' then print('first argument must be a string') return end
    local obfusticatedCode = str
    for init, img in pairs(replacements) do
        if string.len(tostring(init)) == 1 then
            obfusticatedCode = string.gsub(obfusticatedCode,tostring(init),img)
		else
			if tostring(init) == 'exclaim' then
				obfusticatedCode = string.gsub(obfusticatedCode,'!',img)
			elseif tostring(init) == 'paren' then
				obfusticatedCode = string.gsub(obfusticatedCode,'%(',img)
			elseif tostring(init) == 'cparen' then
				obfusticatedCode = string.gsub(obfusticatedCode,'%)',img)
			elseif tostring(init) == 'brack' then
				obfusticatedCode = string.gsub(obfusticatedCode,'%{',img)
			elseif tostring(init) == 'cbrack' then
				obfusticatedCode = string.gsub(obfusticatedCode,'%}',img)
			elseif tostring(init) == 'dqou' then
				obfusticatedCode = string.gsub(obfusticatedCode,'"',img)
			elseif tostring(init) == 'qou' then
				obfusticatedCode = string.gsub(obfusticatedCode,"'",img)
			end
        end
    end
    return obfusticatedCode
end

local function unObfusticate(str)
    if type(str) ~= 'string' then print('first argument must be a string') return end
    local obfusticatedCode = str
    for init, img in pairs(replacements) do
        if string.len(tostring(init)) == 1 then
            obfusticatedCode = string.gsub(obfusticatedCode,img,tostring(init))   
		else
			if tostring(init) == 'exclaim' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,'!')
			elseif tostring(init) == 'paren' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,'%%(')
				obfusticatedCode = string.gsub(obfusticatedCode,'%%','')
			elseif tostring(init) == 'cparen' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,'%%)')
				obfusticatedCode = string.gsub(obfusticatedCode,'%%','')
			elseif tostring(init) == 'brack' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,'%%{')
				obfusticatedCode = string.gsub(obfusticatedCode,'%%','')
			elseif tostring(init) == 'cbrack' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,'%%}')
				obfusticatedCode = string.gsub(obfusticatedCode,'%%','')
			elseif tostring(init) == 'dqou' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,'"')
			elseif tostring(init) == 'qou' then
				obfusticatedCode = string.gsub(obfusticatedCode,img,"'")
			end
        end
    end
    return obfusticatedCode
end

local cod = Obfusticate(code)
print(cod)
local unCod = unObfusticate(cod)
print(unCod)
