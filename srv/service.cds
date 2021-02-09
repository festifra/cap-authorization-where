
using { authorization.where as authDemo } from '../db/schema';


service authorizationWhere {

  @cds.localized:false
  @Capabilities: { Insertable:true, Updatable:true, Deletable:true }
  entity Messages as projection on authDemo.Messages;	

}