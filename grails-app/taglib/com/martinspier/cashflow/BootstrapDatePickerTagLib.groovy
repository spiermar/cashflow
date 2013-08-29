package com.martinspier.cashflow

class BootstrapDatePickerTagLib {

    def bootstrapDatePicker = { attrs, body ->
        def name = attrs.name
        def value = attrs.value?.format('MM/dd/yyyy') ?: ''
        def id = attrs.id ?: name

        out << """
        <input type="text" size="10" name="date" id="date" value="${value}" />
        <input type="hidden" name="${name}_day" id="${id}_day" />
        <input type="hidden" name="${name}_month" id="${id}_month" />
        <input type="hidden" name="${name}_year" id="${id}_year" />
        """

        out << """
        <script type "text/javascript">
        \$(function() {
            \$("#${id}").datepicker( { autoclose: true, todayBtn: true, format: "mm/dd/yyyy" } )
                .on('changeDate', function(e){
                    \$("#${id}_day").attr("value",e.date.getDate());
                    \$("#${id}_month").attr("value",e.date.getMonth() + 1);
                    \$("#${id}_year").attr("value",e.date.getFullYear());
                });
        });
        </script>
        """

    }

}
