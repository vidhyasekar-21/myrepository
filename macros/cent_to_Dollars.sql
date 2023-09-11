{% macro cents_to_dollars(amount, precision=2)-%}
	({{  amount }} / 100):: numeric(16,{{precision}})
{% endmacro %}
