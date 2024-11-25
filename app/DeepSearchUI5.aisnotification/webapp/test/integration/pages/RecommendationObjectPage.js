sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'DeepSearchUI5.aisnotification',
            componentId: 'RecommendationObjectPage',
            contextPath: '/Notification/linked_recommendation'
        },
        CustomPageDefinitions
    );
});