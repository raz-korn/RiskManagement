using RiskManagement2Service as service from '../../srv/service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'prio',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'impact',
            Value : impact,
        },
        {
            $Type : 'UI.DataField',
            Label : 'criticality',
            Value : criticality,
        },
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplier_BusinessPartnerID',
                Value : supplier_BusinessPartnerID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
