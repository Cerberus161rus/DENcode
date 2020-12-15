<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><h3>О escape-последовательности Unicode</h3>
<p>Управляющие последовательности Unicode преобразуют один символ в формат 4-значного шестнадцатеричного кода, например \uXXXX. Например, «A» станет «\u0041».</p>
<p>Символы Unicode, отличные от BMP, представленные в виде суррогатных пар, не подходят для 4-значного кода, поэтому они представлены в следующем формате для каждого языка программирования.</p>

<div class="table-responsive">
	<table class="table table-sm table-fit">
		<tr><th scope="col">Язык программирования</th><th scope="col">Формат</th><th scope="col">Результат преобразования «😀»(U+01F600)</th></tr>
		<tr><td>Java, JS(ES5)</td><td>\uXXXX\uXXXX</td><td>\ud83d\ude00</td></tr>
		<tr><td>Swift, JS(ES6+), PHP, Ruby</td><td>\u{XXXXX}</td><td>\u{1f600}</td></tr>
		<tr><td>C, Python</td><td>\U000XXXXX</td><td>\U0001f600</td></tr>
	</table>
</div>
