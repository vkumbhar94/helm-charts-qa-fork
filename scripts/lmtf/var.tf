variable "lm-container-configuration" {
  type = object({

    argus = object({

      labels = optional(any)
      
      proxy = optional(object({

        url = optional(string)
        
        user = optional(string)
        
        pass = optional(string)
        
      }))
      serviceAccount = optional(object({

        create = optional(bool)
        
      }))
      priorityClassName = optional(string)
      
      collectorsetcontroller = optional(object({

        address = optional(string)
        
        port = optional(number)
        
      }))
      probe = optional(object({

        readiness = optional(object({

          failureThreshold = optional(number)
          
          periodSeconds = optional(number)
          
        }))
        enabled = optional(bool)
        
        startup = optional(object({

          failureThreshold = optional(number)
          
          periodSeconds = optional(number)
          
        }))
        liveness = optional(object({

          failureThreshold = optional(number)
          
          periodSeconds = optional(number)
          
        }))
      }))
      nameOverride = optional(string)
      
      account = optional(string)
      
      resourceContainerID = optional(number)
      
      monitoring = optional(object({

        disable = optional(any)
        
      }))
      lm = optional(object({

        resource = optional(object({

          globalDeleteAfterDuration = optional(string)
          
          alerting = optional(object({

            disable = optional(any)
            
          }))
        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)
            
            nodes = optional(any)
            
            etcd = optional(any)
            
          }))
        }))
        lmlogs = optional(object({

          k8sevent = optional(any)
          
          k8spodlog = optional(any)
          
        }))
      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)
          
        }))
      }))
      fullnameOverride = optional(string)
      
      accessID = optional(string)
      
      clusterName = string
      
      nodeSelector = optional(any)
      
      ignoreSSL = optional(bool)
      
      imagePullSecrets = optional(any)
      
      annotations = optional(any)
      
      filters = optional(any)
      
      collector = optional(object({

        image = optional(object({

          registry = optional(string)
          
          repository = optional(string)
          
          tag = optional(string)
          
          pullPolicy = optional(string)
          
        }))
        proxy = optional(object({

          url = optional(string)
          
          user = optional(string)
          
          pass = optional(string)
          
        }))
        annotations = optional(any)
        
        labels = optional(any)
        
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)
            
          }))
        }))
        probe = optional(object({

          liveness = optional(object({

            failureThreshold = optional(number)
            
            periodSeconds = optional(number)
            
          }))
          readiness = optional(object({

            failureThreshold = optional(number)
            
            periodSeconds = optional(number)
            
          }))
          enabled = optional(bool)
          
          startup = optional(object({

            periodSeconds = optional(number)
            
            failureThreshold = optional(number)
            
          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)
          
        }))
        replicas = optional(number)
        
        version = optional(number)
        
        size = optional(string)
        
        useEA = optional(bool)
        
        lm = optional(object({

          groupID = optional(number)
          
          escalationChainID = optional(number)
          
        }))
        disableLightweightCollector = optional(bool)
        
      }))
      image = optional(object({

        tag = optional(string)
        
        registry = optional(string)
        
        repository = optional(string)
        
        pullPolicy = optional(string)
        
      }))
      tolerations = optional(any)
      
      log = optional(object({

        level = optional(string)
        
      }))
      daemons = optional(object({

        worker = optional(object({

          poolSize = optional(number)
          
        }))
        watcher = optional(object({

          bulkSyncInterval = optional(string)
          
          runner = optional(object({

            poolSize = optional(number)
            
            backPressureQueueSizePerRunner = optional(number)
            
          }))
          sysIpsWaitTimeout = optional(string)
          
        }))
        lmResourceSweeper = optional(object({

          interval = optional(string)
          
        }))
        lmCacheSync = optional(object({

          interval = optional(string)
          
        }))
      }))
      resources = optional(object({

        limits = optional(any)
        
        requests = optional(any)
        
      }))
      selfMonitor = optional(object({

        enable = optional(bool)
        
        port = optional(number)
        
      }))
      rbac = optional(object({

        create = optional(bool)
        
      }))
      enabled = optional(bool)
      
      accessKey = optional(string)
      
      clusterTreeParentID = optional(number)
      
      affinity = optional(any)
      
    })
    global = optional(object({

      accessKey = optional(string)
      
      account = optional(string)
      
      image = optional(object({

        registry = optional(string)
        
        pullPolicy = optional(string)
        
      }))
      proxy = optional(object({

        url = optional(string)
        
        user = optional(string)
        
        pass = optional(string)
        
      }))
      collectorsetServiceNameSuffix = optional(string)
      
      accessID = optional(string)
      
    }))
})
}