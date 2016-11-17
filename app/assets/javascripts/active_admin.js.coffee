#= require active_admin/base
$ ->
  $('[name="variant_to_remove"]').change (event) -> 

    variant_to_remove_id = $(":selected")[3].value
    variant_to_remove_name = $(":selected")[3].text
    variant_to_keep_id = $(":selected")[2].value
    if variant_to_keep_id and variant_to_remove_id
      $.getJSON '/api/variants/' + variant_to_remove_id + '/suggested_changes    ', (variant_to_remove_data) ->
        hasActiveChange = 0
        for v in variant_to_remove_data 
          do ->
            console.log v.status
            if v.status != "applied" and v.status != "superceded" and v.status != "closed"
              hasActiveChange = 1
        
        if hasActiveChange
          if confirm variant_to_remove_name + " has active suggested changes. Are you sure you want merge?"
            true
          else
            event.preventDefault()
