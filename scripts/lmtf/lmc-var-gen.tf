variable "lm-container-configuration2" {
  type = object({

    argus = object({

      clusterTreeParentID = optional(number)
      
      clusterName = string
      
    })
    collectorset-controller = optional(any)
    
    global = optional(object({

      account = optional(string)
      
      accessID = optional(string)
      
      accessKey = optional(string)
      
    }))
})
}