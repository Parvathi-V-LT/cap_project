using SalesService as service from '../../srv/service';
annotate service.Sales with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'product',
                Value : product,
            },
            {
                $Type : 'UI.DataField',
                Label : 'region',
                Value : region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount',
                Value : amount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'date',
                Value : date,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'product',
            Value : product,
        },
        {
            $Type : 'UI.DataField',
            Label : 'region',
            Value : region,
        },
        {
            $Type : 'UI.DataField',
            Label : 'amount',
            Value : amount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'date',
            Value : date,
        },
    ],
);

using SalesService from '../../srv/service';

annotate SalesService.Sales with {

    @UI.Chart: {
        Title: 'Sales by Region',
        ChartType: #Column,
        Measures: ['amount'],
        Dimensions: ['region']
    }

    @UI.LineItem: [
        { Value: product },
        { Value: region },
        { Value: amount }
    ]

    @UI.SelectionFields: [
        region,
        product
    ]

    @Analytics.Measure: true
    amount;

    @Analytics.Dimension: true
    region;

    @Analytics.Dimension: true
    product;
};

annotate SalesService.Sales with @Capabilities: {
    Aggregation: {
        Supported: true
    }
};