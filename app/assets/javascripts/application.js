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

$(document).ready(function() {
	// hide It

	$("[id*=table_]").hide();
	$('#table_101').show();
	$('#my-affix').affix({
		offset: {
			bottom: function () {
				return (this.bottom = $('#footer').outerHeight(true))
			}
		}
	})
});

function desplegar(interno){
	$("[id*=table_]").hide();
		$('#table_'+interno).fadeToggle();
};
function myFunction() {
    alert("You pressed a key inside the input field");
    console.log("se va por ahi");
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
		limit: 6,
		remote: '/funcionarios?value=%QUERY'
	});
	var sugerencia_departamentos = new Bloodhound({
		datumTokenizer: function(d) {
			return Bloodhound.tokenizers.whitespace(d.nombre);
		},queryTokenizer: Bloodhound.tokenizers.whitespace,
		limit: 6,
	remote: '/departamentos?value=%QUERY'
	});
	sugerencia_funcionarios.initialize();
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
		    suggestion: function(data){

		      return '<p onselect="myFunction()" onclick="irA('+data.interno+')" style="cursor:pointer" >' + data.nombre +' '+data.apellido +' - ' + data.interno + '</p>';
		    }
		}
	},
	{
	    name: 'sugerencia-departamentos',
	    displayKey: 'value',
	    source: sugerencia_departamentos.ttAdapter(),
		templates: {
		  	 header: '<h3 class="funcionarios-list">Departamento</h3>',
		     empty: [
		      '<div class="empty-message">',
		      'ninguna coincidencia :(',
		      '</div>'
		    ].join('\n'),
		    suggestion: function(data){
		      return '<p onkeydown="myFunction()" onclick="irA('+data.interno+')" style="cursor:pointer" >' + data.nombre +' - ' + data.interno + '</p>';
		    }
		}
	});
});