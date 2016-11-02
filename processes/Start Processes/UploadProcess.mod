[Ivy]
[>Created: Mon Nov 16 14:55:17 ICT 2015]
1510F22597CFA3EC 3.17 #module
>Proto >Proto Collection #zClass
Us0 UploadProcess Big #zClass
Us0 B #cInfo
Us0 #process
Us0 @TextInP .resExport .resExport #zField
Us0 @TextInP .type .type #zField
Us0 @TextInP .processKind .processKind #zField
Us0 @AnnotationInP-0n ai ai #zField
Us0 @MessageFlowInP-0n messageIn messageIn #zField
Us0 @MessageFlowOutP-0n messageOut messageOut #zField
Us0 @TextInP .xml .xml #zField
Us0 @TextInP .responsibility .responsibility #zField
Us0 @StartRequest f0 '' #zField
Us0 @EndTask f1 '' #zField
Us0 @Page f3 '' #zField
Us0 @Page f5 '' #zField
Us0 @PushWFArc f6 '' #zField
Us0 @PushWFArc f2 '' #zField
Us0 @GridStep f7 '' #zField
Us0 @PushWFArc f8 '' #zField
Us0 @PushWFArc f4 '' #zField
>Proto Us0 Us0 UploadProcess #zField
Us0 f0 outLink start.ivp #txt
Us0 f0 type grant_permission_test_users.Data #txt
Us0 f0 inParamDecl '<> param;' #txt
Us0 f0 actionDecl 'grant_permission_test_users.Data out;
' #txt
Us0 f0 guid 1510F22598D4AD66 #txt
Us0 f0 requestEnabled true #txt
Us0 f0 triggerEnabled false #txt
Us0 f0 callSignature start() #txt
Us0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
Us0 f0 @C|.responsibility Everybody #txt
Us0 f0 81 49 30 30 -21 17 #rect
Us0 f0 @|StartRequestIcon #fIcon
Us0 f1 type grant_permission_test_users.Data #txt
Us0 f1 745 49 30 30 0 15 #rect
Us0 f1 @|EndIcon #fIcon
Us0 f3 outTypes "grant_permission_test_users.Data" #txt
Us0 f3 outLinks "LinkA.ivp" #txt
Us0 f3 template "/ProcessPages/UploadProcess/UploadPage.ivc" #txt
Us0 f3 type grant_permission_test_users.Data #txt
Us0 f3 skipLink skip.ivp #txt
Us0 f3 sortLink sort.ivp #txt
Us0 f3 templateWizard '#
#Mon Nov 16 14:21:57 ICT 2015
' #txt
Us0 f3 pageArchivingActivated false #txt
Us0 f3 @C|.responsibility Everybody #txt
Us0 f3 328 42 112 44 0 -8 #rect
Us0 f3 @|PageIcon #fIcon
Us0 f5 outTypes "grant_permission_test_users.Data" #txt
Us0 f5 outLinks "LinkA.ivp" #txt
Us0 f5 template "/ProcessPages/UploadProcess/ShittyPage.ivc" #txt
Us0 f5 type grant_permission_test_users.Data #txt
Us0 f5 skipLink skip.ivp #txt
Us0 f5 sortLink sort.ivp #txt
Us0 f5 templateWizard '#
#Mon Nov 16 14:23:03 ICT 2015
' #txt
Us0 f5 pageArchivingActivated false #txt
Us0 f5 @C|.responsibility Everybody #txt
Us0 f5 536 42 112 44 0 -8 #rect
Us0 f5 @|PageIcon #fIcon
Us0 f6 expr data #txt
Us0 f6 outCond ivp=="LinkA.ivp" #txt
Us0 f6 440 64 536 64 #arcP
Us0 f2 expr data #txt
Us0 f2 outCond ivp=="LinkA.ivp" #txt
Us0 f2 648 64 745 64 #arcP
Us0 f7 actionDecl 'grant_permission_test_users.Data out;
' #txt
Us0 f7 actionTable 'out=in;
' #txt
Us0 f7 actionCode ivy.log.error(ivy.html.applicationHomeRef()); #txt
Us0 f7 type grant_permission_test_users.Data #txt
Us0 f7 168 42 112 44 0 -8 #rect
Us0 f7 @|StepIcon #fIcon
Us0 f8 expr out #txt
Us0 f8 111 64 168 64 #arcP
Us0 f4 expr out #txt
Us0 f4 280 64 328 64 #arcP
>Proto Us0 .type grant_permission_test_users.Data #txt
>Proto Us0 .processKind NORMAL #txt
>Proto Us0 0 0 32 24 18 0 #rect
>Proto Us0 @|BIcon #fIcon
Us0 f3 out f6 tail #connect
Us0 f6 head f5 mainIn #connect
Us0 f5 out f2 tail #connect
Us0 f2 head f1 mainIn #connect
Us0 f0 mainOut f8 tail #connect
Us0 f8 head f7 mainIn #connect
Us0 f7 mainOut f4 tail #connect
Us0 f4 head f3 mainIn #connect
