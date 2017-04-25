ES=search-covance-rsz4k7ac66qrxfvlzi3wzkozhe.us-west-2.es.amazonaws.com

curl -XPUT $ES/covance -d '
{
    "mappings": {
      "studies": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
          "account_id":    { "type": "integer" }, 
          "name":     { "type": "text"  }, 
          "version":     { "type": "text"  }, 
          "full_name":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "user_ids":      { "type": "text" , "fielddata": true,"analyzer": "cjk" }  
        }
      },
      "study_countries": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
          "country_code":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "country_name":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "user_ids":      { "type": "text" , "fielddata": true,"analyzer": "cjk" } , 
          "account_id":    { "type": "integer" },  
          "study_id":    { "type": "integer" },  
          "sites_planned":     { "type": "integer"  } 
       }
      },
      "study_sites": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
           "study_country_id":    { "type": "integer" },  
           "status":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
           "study_site_number":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
           "comments":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
           "irb_ec_type":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
           "institution":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
           "study_id":    { "type": "integer" },  
           "cros_site_id":    { "type": "integer" },  
           "street_1":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "street_2":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "city":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "state_or_region":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "postal_code":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "phone_number":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "email":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
          "country_code":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "country_name":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "user_ids":      { "type": "text" , "fielddata": true,"analyzer": "cjk" }  
         }
      },
      "pi": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
           "first_name":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "last_name":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
           "state":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
          "country_code":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "country_name":     { "type": "text", "fielddata": true,"analyzer": "cjk"   }, 
          "email":    { "type": "text", "fielddata": true,"analyzer": "cjk" },  
          "postal_code":    { "type": "text", "fielddata": true,"analyzer": "cjk" }
        }
      }
           
   }
    
}'
