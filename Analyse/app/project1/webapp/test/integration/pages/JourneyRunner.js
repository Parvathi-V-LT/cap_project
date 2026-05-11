sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"pro/project1/test/integration/pages/SalesList",
	"pro/project1/test/integration/pages/SalesObjectPage"
], function (JourneyRunner, SalesList, SalesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('pro/project1') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesList: SalesList,
			onTheSalesObjectPage: SalesObjectPage
        },
        async: true
    });

    return runner;
});

