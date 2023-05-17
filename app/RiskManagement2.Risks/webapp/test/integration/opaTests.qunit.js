sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'RiskManagement2/Risks/test/integration/FirstJourney',
		'RiskManagement2/Risks/test/integration/pages/RisksList',
		'RiskManagement2/Risks/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('RiskManagement2/Risks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);