{%- macro limit_data_in_dev(column, years) -%}
{%- if target.name == 'dev' -%}
where {{ column }} >= dateadd('year', - {{ years }}, current_timestamp)
{%- endif -%}
{% endmacro -%}