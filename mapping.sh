ES=search-covance-rsz4k7ac66qrxfvlzi3wzkozhe.us-west-2.es.amazonaws.com

curl -XPUT $ES/covance -d '
{
    "mappings": {
      "studies": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
          "account_id":    { "type": "integer" },
          "name":     { "type": "text"  },
          "full_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "therapeutic_area":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "protocol_number":      { "type": "text" , "fielddata": true, "analyzer": "standard" },
          "cros_study_id":    { "type": "integer" },
          "status":      { "type": "text" , "fielddata": true, "analyzer": "standard" },
          "phase":      { "type": "text" , "fielddata": true, "analyzer": "standard" },
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" }
      },
      "study_countries": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
          "country_code":     { "type": "text", "fielddata": true, "analyzer": "standard"   }, 
          "country_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   }, 
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" } , 
          "account_id":    { "type": "integer" },  
          "study_id":    { "type": "integer" },  
          "sites_planned":     { "type": "integer"  } 
       }
      },
      "study_sites": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
           "study_country_id":    { "type": "integer" },  
           "status":     { "type": "text", "fielddata": true, "analyzer": "standard"   }, 
           "site_number":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "comments":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "irb_ec_type":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "institution":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "study_id":    { "type": "integer" },
           "cros_site_id":    { "type": "integer" },
           "street_1":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "street_2":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "city":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "state_or_region":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "postal_code":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "phone_number":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "email":    { "type": "text", "fielddata": true, "analyzer": "standard" },
          "country_code":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "country_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" }
         }
      },
      "pi": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
           "first_name":    { "type": "text", "fielddata": true, "analyzer": "standard" },  
           "last_name":    { "type": "text", "fielddata": true, "analyzer": "standard" },  
           "state":    { "type": "text", "fielddata": true, "analyzer": "standard" },  
          "country_code":     { "type": "text", "fielddata": true, "analyzer": "standard"   }, 
          "country_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   }, 
          "email":    { "type": "text", "fielddata": true, "analyzer": "standard" },  
          "postal_code":    { "type": "text", "fielddata": true, "analyzer": "standard" }
        }
      }
           
   }
    
}'
