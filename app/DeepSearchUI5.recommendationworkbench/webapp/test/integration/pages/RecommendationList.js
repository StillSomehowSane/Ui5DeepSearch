sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'DeepSearchUI5.recommendationworkbench',
            componentId: 'RecommendationList',
            contextPath: '/Recommendation'
        },
        CustomPageDefinitions
    );
});