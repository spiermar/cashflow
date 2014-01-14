package com.martinspier.cashflow

class ModalTagLib {
	
	static namespace = "modal"
	
	def delete = { attrs, body ->
        out << "<div class=\"modal fade\" id=\"deleteModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"deleteModalLabel\" aria-hidden=\"true\">"
        out << "<div class=\"modal-dialog\">"
        out << "<div class=\"modal-content\">"
		out << "<div class=\"modal-header\">"
        out << "<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>"
        out << "<h4 class=\"modal-title\" id=\"deleteModalLabel\">${g.message(code: 'default.delete.confirm.header', default: 'Are you sure?')}</h4>"
		out << "</div>"
        out << "<div class=\"modal-body\">"
		out << "<p>${g.message(code: 'default.delete.confirm.message', args: [attrs.entityName, attrs.id], default: 'Are you sure?')}</p>"
		out << "</div>"
		out << "<div class=\"modal-footer\">"
        out << "<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"
		out << g.actionSubmit(class: 'btn btn-danger', action: 'delete', value: g.message(code: 'default.button.delete.label', default: 'Delete'))
		out << "</div>"
		out << "</div>"
        out << "</div>"
        out << "</div>"
	}
	
	def show = { attrs, body ->
		out << '<div id="showModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="showModalLabel" aria-hidden="true">'
		out << '<div class="modal-header">'
		out << '<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="glyphicon glyphicon-remove"></i></button>'
		out << '<h3 id="showModalLabel">' + g.message(code: 'default.show.label', args: attrs.entityName, default: 'Show') + '</h3>'
		out << '</div>'
		out << '<div class="modal-body">'
		out << '<dl class="dl-horizontal">'
		attrs.fields.each() { key, value ->
			out << '<dt>' + key + '</dt>'
			out << '<dd>' + value + '</dd>'
		}
		out << '</dl>'
		out << '</div>'
		out << '<div class="modal-footer">'
		out << '</div>'
		out << '</div>'
	}

}
