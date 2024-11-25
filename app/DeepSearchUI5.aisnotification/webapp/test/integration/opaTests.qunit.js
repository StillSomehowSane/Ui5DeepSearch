sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'DeepSearchUI5/aisnotification/test/integration/FirstJourney',
		'DeepSearchUI5/aisnotification/test/integration/pages/NotificationList',
		'DeepSearchUI5/aisnotification/test/integration/pages/NotificationObjectPage',
		'DeepSearchUI5/aisnotification/test/integration/pages/RecommendationObjectPage'
    ],
    function(JourneyRunner, opaJourney, NotificationList, NotificationObjectPage, RecommendationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('DeepSearchUI5/aisnotification') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNotificationList: NotificationList,
					onTheNotificationObjectPage: NotificationObjectPage,
					onTheRecommendationObjectPage: RecommendationObjectPage
                }
            },
            opaJourney.run
        );
    }
);