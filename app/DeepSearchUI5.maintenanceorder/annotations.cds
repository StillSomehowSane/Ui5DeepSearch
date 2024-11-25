using WorkbenchPlus as service from '../../srv/service';
annotate service.MaintenanceOrder with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : display_id,
                Label : 'display_id',
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
            Label : 'display_id',
            Value : display_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'start_date',
            Value : start_date,
        },
        {
            $Type : 'UI.DataField',
            Value : end_date,
            Label : 'end_date',
        },
    ],
);

annotate service.MaintenanceOrder with {
    recommendation @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Recommendation',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : recommendation_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'display_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'type',
            },
        ],
    }
};

