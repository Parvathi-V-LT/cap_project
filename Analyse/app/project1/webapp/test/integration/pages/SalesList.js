sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'pro.project1',
            componentId: 'SalesList',
            contextPath: '/Sales'
        },
        CustomPageDefinitions
    );
});