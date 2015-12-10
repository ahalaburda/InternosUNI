// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require ahoy
//= require bootstrap
//= require twitter/typeahead
//= require handlebars.runtime
//= require rails.validations
//= require rails.validations.simple_form
//= require jquery_nested_form

$(document).ready(function() {
	$("[id*=table_]").hide();
	$('#form-funcionarios').hide();
	$('#table_101').show();
});

$(document).ready(function(){
	setTimeout(function(){
		$('#flash').remove();
	}, 5000);
});
//boton ir arriba
$(document).ready(function(){
	if ( ($(window).height() + 100) < $(document).height() ) {
		$('#ir-arriba').fadeIn('slow');
		$('#ir-arriba').removeClass('hidden')
		.affix({
			offset: {top:100}
		});
	}
});

$(document).ready(function() {
	$("#btn1").click(function(){
		$('#form-funcionarios').fadeToggle();
		if($('#gbtn1').hasClass('glyphicon glyphicon-plus')){
			$('#gbtn1').removeClass('glyphicon glyphicon-plus');
			$('#gbtn1').addClass('glyphicon glyphicon-chevron-up');
		}else{
			$('#gbtn1').removeClass('glyphicon glyphicon-chevron-up');
			$('#gbtn1').addClass('glyphicon glyphicon-plus');
		}
	});
});

function desplegar(interno){
	$("[id*=table_]").hide();
		$('#table_'+interno).fadeToggle();
};

function irA (interno) {
	var p = $( "#columna1_"+interno );
	var offset = p.offset();
	var posX = offset.top;
	var position = 0;
	var position = posX - 150;
	$("html, body").scrollTop(position);
	desplegar(interno);
	console.log("se va por ahi");
};

// http://stackoverflow.com/questions/22821770/typeahead-js-template-settings-ignored
$(document).ready(function() {
	var sugerencia_funcionarios = new Bloodhound({
		datumTokenizer: function(d) {
			return Bloodhound.tokenizers.whitespace(d.nombre);
		},queryTokenizer: Bloodhound.tokenizers.whitespace,
		limit: 6 ,
		remote: '/funcionarios?value=%QUERY'
	});
	var sugerencia_departamentos = new Bloodhound({
		datumTokenizer: function(d) {
			return Bloodhound.tokenizers.whitespace(d.value);
		},queryTokenizer: Bloodhound.tokenizers.whitespace,
		limit: 6,
		remote: '/departamentos?value=%QUERY'
	});
	sugerencia_funcionarios.clearRemoteCache();
	sugerencia_funcionarios.initialize(true);
	sugerencia_departamentos.initialize();

	$('#the-basics .typeahead').typeahead({
		hint: true,
		highlight: true,
		minLength: 1
	},
	{
		name: 'sugerencia-funcionarios',
		displayKey: 'value',
		source: sugerencia_funcionarios.ttAdapter(),
		templates: {
			header: '<h3 class="funcionarios-list">Funcionario</h3>',
			empty: [
				'<div class="empty-message">',
				'ninguna coincidencia :(',
				'</div>'
			].join('\n'),
			suggestion: function(funcionario){
				return '<p onselect="myFunction()" onclick="irA('+funcionario.interno+')" style="cursor:pointer" >' + funcionario.nombre +' '+funcionario.apellido + ' - ' + funcionario.interno +'</p>';
			}
		}
	},
	{
		name: 'sugerencia-departamentos',
		displayKey: 'value',
		source: sugerencia_departamentos.ttAdapter(),
		templates: {
			header: '<h3 class="funcionarios-list">Departamento </h3>',
			empty: [
				'<div class="empty-message">',
				'ninguna coincidencia :(',
				'</div>'
			].join('\n'),
			suggestion: function(departamento){
				return '<p onkeydown="myFunction()" onclick="irA('+departamento.interno+')" style="cursor:pointer" >' + departamento.nombre +' - ' + departamento.interno + '</p>';
			}
		}
	});
});