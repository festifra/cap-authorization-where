
using { authorization.where as authDemo } from '../db/schema';


service authorizationWhere {

  @Capabilities: { Insertable:true, Updatable:true, Deletable:true }
  entity Messages as projection on authDemo.Messages;	

}