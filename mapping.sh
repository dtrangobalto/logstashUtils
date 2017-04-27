ES=search-demo-g5qsjwuw5mkieywkedmz6fki2i.us-west-2.es.amazonaws.com

curl -XPUT $ES/covance -d '
{
    "mappings": {
      "studies": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
          "id":    { "type": "integer" },
          "account_id":    { "type": "integer" },
          "cros_study_id":    { "type": "text", "fielddata": true, "analyzer": "standard"  },
          "study_name":       { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "protocol_number":      { "type": "text" , "fielddata": true, "analyzer": "standard" },
          "status":      { "type": "text"  },
          "phase":      { "type": "text"  },
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" }
        }
      },
      "study_countries": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
          "id":    { "type": "integer" },
          "country_code":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "country_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   }, 
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" } , 
          "account_id":    { "type": "integer" },  
          "study_id":    { "type": "integer" }
       }
      },
      "study_sites": { 
        "_all":       { "enabled": true  }, 
        "properties": {
           "id":    { "type": "integer" },
           "study_country_id":    { "type": "integer" },  
           "status":     { "type": "text"   },
           "site_number":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "institution":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "study_id":        { "type": "integer" },
           "cros_site_id":    { "type": "integer" },
           "email":            { "type": "text"   },
           "country_code":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
           "country_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" }
         }
      },
      "pi": { 
        "_all":       { "enabled": true  }, 
        "properties": { 
           "id":    { "type": "integer" },
           "first_name":    { "type": "text", "fielddata": true, "analyzer": "standard" },
           "last_name":    { "type": "text", "fielddata": true, "analyzer": "standard" },  
          "country_code":     { "type": "text", "fielddata": true, "analyzer": "standard"  },
          "country_name":     { "type": "text", "fielddata": true, "analyzer": "standard"   },
          "email":    { "type": "text"},
          "user_ids":      { "type": "text" , "fielddata": true, "analyzer": "standard" }
        }
      }

   }
           
   
    
}'

echo
echo "DONE"
