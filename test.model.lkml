connection: "salestax"
label: "Sales Tax Data"

# include all the views
include: "/views/**/*.view"

datagroup: salestax_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


explore: salestax {
  label: " Data Explorer: Sales Tax"
}
