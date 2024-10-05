# Description
Fix workshop map collection in CS2
The host_workshop_collection and host_workshop_map must be removed from the startup command

# Config
```
{
	"collection": "", // this is the workshop collection
	"map": "de_dust2" // this should be the default map of the server (the collection is loaded on this map)
}
```
