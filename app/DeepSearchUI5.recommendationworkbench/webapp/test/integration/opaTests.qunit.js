sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'DeepSearchUI5/recommendationworkbench/test/integration/FirstJourney',
		'DeepSearchUI5/recommendationworkbench/test/integration/pages/RecommendationList',
		'DeepSearchUI5/recommendationworkbench/test/integration/pages/RecommendationObjectPage'
    ],
    function(JourneyRunner, opaJourney, RecommendationList, RecommendationObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('DeepSearchUI5/recommendationworkbench') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRecommendationList: RecommendationList,
					onTheRecommendationObjectPage: RecommendationObjectPage
                }
            },
            opaJourney.run
        );
    }
);