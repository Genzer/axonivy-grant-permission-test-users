[Ivy]
[>Created: Wed Nov 02 09:32:59 ICT 2016]
151004F3DF359FA2 3.18 #module
>Proto >Proto Collection #zClass
Gy0 GrantPermissionToEverybody Big #zClass
Gy0 B #cInfo
Gy0 #process
Gy0 @TextInP .resExport .resExport #zField
Gy0 @TextInP .type .type #zField
Gy0 @TextInP .processKind .processKind #zField
Gy0 @AnnotationInP-0n ai ai #zField
Gy0 @MessageFlowInP-0n messageIn messageIn #zField
Gy0 @MessageFlowOutP-0n messageOut messageOut #zField
Gy0 @TextInP .xml .xml #zField
Gy0 @TextInP .responsibility .responsibility #zField
Gy0 @StartRequest f0 '' #zField
Gy0 @GridStep f3 '' #zField
Gy0 @PushWFArc f4 '' #zField
Gy0 @StartEvent f5 '' #zField
Gy0 @EndTask f6 '' #zField
Gy0 @PushWFArc f8 '' #zField
Gy0 @PushWFArc f7 '' #zField
>Proto Gy0 Gy0 GrantPermissionToEverybody #zField
Gy0 f0 outLink start.ivp #txt
Gy0 f0 type grant_permission_test_users.Data #txt
Gy0 f0 inParamDecl '<> param;' #txt
Gy0 f0 actionDecl 'grant_permission_test_users.Data out;
' #txt
Gy0 f0 guid 151004F3E0164D3C #txt
Gy0 f0 requestEnabled true #txt
Gy0 f0 triggerEnabled false #txt
Gy0 f0 callSignature start() #txt
Gy0 f0 persist false #txt
Gy0 f0 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
Gy0 f0 showInStartList 1 #txt
Gy0 f0 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
Gy0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Manually grant all permission.</name>
        <nameStyle>30,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Gy0 f0 @C|.responsibility Everybody #txt
Gy0 f0 81 49 30 30 -82 17 #rect
Gy0 f0 @|StartRequestIcon #fIcon
Gy0 f3 actionDecl 'grant_permission_test_users.Data out;
' #txt
Gy0 f3 actionTable 'out=in;
' #txt
Gy0 f3 actionCode 'import com.axonivy.misc.development.designers.permissions.GrantPermissionsForEveryBodyCommand;


ch.ivyteam.ivy.security.internal.SecurityManager.getSecurityManager().executeAsSystem(new GrantPermissionsForEveryBodyCommand());

try {
	new GrantPermissionsForEveryBodyCommand().call();
} catch (Exception e) {
	ivy.log.error(e);
}' #txt
Gy0 f3 type grant_permission_test_users.Data #txt
Gy0 f3 168 170 112 44 0 -8 #rect
Gy0 f3 @|StepIcon #fIcon
Gy0 f4 expr out #txt
Gy0 f4 106 74 224 170 #arcP
Gy0 f5 outerBean "com.axonivy.misc.development.designers.permissions.RunOnceOnApplicationStartBean" #txt
Gy0 f5 outLink eventLink.ivp #txt
Gy0 f5 type grant_permission_test_users.Data #txt
Gy0 f5 @C|.responsibility Everybody #txt
Gy0 f5 65 177 30 30 0 15 #rect
Gy0 f5 @|StartEventIcon #fIcon
Gy0 f6 type grant_permission_test_users.Data #txt
Gy0 f6 369 177 30 30 0 15 #rect
Gy0 f6 @|EndIcon #fIcon
Gy0 f8 expr out #txt
Gy0 f8 95 192 168 192 #arcP
Gy0 f7 expr out #txt
Gy0 f7 280 192 369 192 #arcP
>Proto Gy0 .type grant_permission_test_users.Data #txt
>Proto Gy0 .processKind NORMAL #txt
>Proto Gy0 0 0 32 24 18 0 #rect
>Proto Gy0 @|BIcon #fIcon
Gy0 f0 mainOut f4 tail #connect
Gy0 f4 head f3 mainIn #connect
Gy0 f5 mainOut f8 tail #connect
Gy0 f8 head f3 mainIn #connect
Gy0 f3 mainOut f7 tail #connect
Gy0 f7 head f6 mainIn #connect
