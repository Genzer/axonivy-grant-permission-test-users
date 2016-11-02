package com.axonivy.misc.development.designers.permissions;

import java.util.concurrent.Callable;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.security.IPermissionGroup;
import ch.ivyteam.ivy.security.IRole;

public class GrantPermissionsForEveryBodyCommand implements Callable<Void> {

    @Override
    public Void call() throws Exception {
        IRole everybody = Ivy.session().getSecurityContext().findRole("Everybody");

        IPermissionGroup rootPermissionGroup = Ivy.wf().getApplication()
                .getSecurityDescriptor().getSecurityDescriptorType().getRootPermissionGroup();

        Ivy.wf().getApplication().getSecurityDescriptor()
                .grantPermissions(rootPermissionGroup, everybody);
        
        return null;
    }

}
