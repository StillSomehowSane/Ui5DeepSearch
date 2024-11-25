sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'DeepSearchUI5.aisnotification',
            componentId: 'NotificationObjectPage',
            contextPath: '/Notification'
        },
        CustomPageDefinitions
    );
});