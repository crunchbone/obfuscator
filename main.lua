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
	z = '◙ ',
	exclaim = '⅓ ',
	paren = '⅔ ',
	cparen = '⅛ ',
	brack = '⅜ ',
	cbrack = '⅞ ',
	dqou = '‼ ',
	qou = '‡ '
}
local code = 'print("Hello World!")'

local function obfuscate(str, isReverse)
	if type(str) ~= 'string' then
		error('First argument must be a string')
	end

	local transformedCode = str:gsub('.', function(char)
		local replacement = replacements[char] or char
		return isReverse and char or replacement
	end)

	return transformedCode
end

local function unobfuscate(str)
	if type(str) ~= 'string' then
		error('First argument must be a string')
	end

	local unobfuscatedCode = str
	for char, replacement in pairs(replacements) do
		if string.len(char) == 1 then
			unobfuscatedCode = string.gsub(unobfuscatedCode, replacement, char)
		else
			unobfuscatedCode = string.gsub(unobfuscatedCode, replacement, char)
		end
	end
	return unobfuscatedCode
end

local obfuscatedCode = obfuscate(code)
print(obfuscatedCode)

local unObfuscatedCode = unobfuscate(code)
print(unObfuscatedCode)
