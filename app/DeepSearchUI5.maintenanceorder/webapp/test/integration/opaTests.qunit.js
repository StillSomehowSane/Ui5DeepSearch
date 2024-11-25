sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'DeepSearchUI5/maintenanceorder/test/integration/FirstJourney',
		'DeepSearchUI5/maintenanceorder/test/integration/pages/MaintenanceOrderList',
		'DeepSearchUI5/maintenanceorder/test/integration/pages/MaintenanceOrderObjectPage'
    ],
    function(JourneyRunner, opaJourney, MaintenanceOrderList, MaintenanceOrderObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('DeepSearchUI5/maintenanceorder') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMaintenanceOrderList: MaintenanceOrderList,
					onTheMaintenanceOrderObjectPage: MaintenanceOrderObjectPage
                }
            },
            opaJourney.run
        );
    }
);