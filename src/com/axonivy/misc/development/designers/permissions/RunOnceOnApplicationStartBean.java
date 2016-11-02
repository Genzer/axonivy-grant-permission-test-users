package com.axonivy.misc.development.designers.permissions;

import java.util.Collections;
import java.util.Map;

import ch.ivyteam.api.PublicAPI;
import ch.ivyteam.ivy.process.eventstart.AbstractProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.request.RequestException;

public class RunOnceOnApplicationStartBean extends AbstractProcessStartEventBean {

    public RunOnceOnApplicationStartBean() {
        super("RunOnceOnApplicationStartBean", "Description of RunOnceOnApplicationStartBean");
    }

    @Override
    @PublicAPI
    public void initialize(IProcessStartEventBeanRuntime _eventRuntime, String _configuration) {
        super.initialize(_eventRuntime, _configuration);
        fireEventToStartProcess();
        turnOff();
    }
    
    

    private void turnOff() {
        getEventBeanRuntime().setPollTimeInterval(0L);
    }
    

    /**
     * Fires an event to start the process using this event bean.
     */
    private void fireEventToStartProcess() {
        try {
            Map<String, Object> params = Collections.emptyMap();
            getEventBeanRuntime().fireProcessStartEventRequest(null, "", params);
        } catch (RequestException e) {
            throw new RuntimeException(
                    "Cannot fire event to run process. The application may be not working as expected", e);
        }
    }
    
    @Override
    @PublicAPI
    public final void poll() {
    }
    
}
