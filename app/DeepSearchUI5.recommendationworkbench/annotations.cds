using WorkbenchPlus as service from '../../srv/service';
annotate service.Recommendation with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'display_id',
                Value : display_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'type',
                Value : type,
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
            Label : 'Recommendation Display Id',
            Value : display_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Type',
            Value : type,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : notification.end_date,
            Label : 'Notification End Date',
        },
        {
            $Type : 'UI.DataField',
            Value : notification.start_date,
            Label : 'Notification Start Date',
        },
        {
            $Type : 'UI.DataField',
            Value : notification.status,
            Label : 'Notification Status',
        },
        {
            $Type : 'UI.DataField',
            Value : maintenanceOrder.display_id,
            Label : 'Order Display Id',
        },
        {
            $Type : 'UI.DataField',
            Value : maintenanceOrder.end_date,
            Label : 'Order End Date',
        },
        {
            $Type : 'UI.DataField',
            Value : maintenanceOrder.start_date,
            Label : 'Order Start Date',
        },
        {
            $Type : 'UI.DataField',
            Value : assessment.display_id,
            Label : 'Assessment Display Id',
        },
        {
            $Type : 'UI.DataField',
            Value : assessment.risk_fields,
            Label : 'Risk Fields',
        },
        {
            $Type : 'UI.DataField',
            Value : assessment.to_description.short,
            Label : 'Assessment Short Description',
        },
    ],
    UI.SelectionFields : [
        notification.end_date,
        notification.start_date,
        notification.status,
        maintenanceOrder.end_date,
        maintenanceOrder.start_date,
        short,
    ],
);

annotate service.Recommendation with {
    notification @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Notification',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : notification_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'display_id',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'start_date',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'status',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'end_date',
            },
        ],
    }
};

annotate service.Notification with {
    end_date @Common.Label : 'Notification End Date'
};

annotate service.Notification with {
    start_date @Common.Label : 'Notification Start Date'
};

annotate service.Notification with {
    status @Common.Label : 'Notification Status'
};

annotate service.MaintenanceOrder with {
    end_date @Common.Label : 'Maintenance Order End Date'
};

annotate service.MaintenanceOrder with {
    start_date @Common.Label : 'Maintenance Order Start Date'
};

annotate service.Recommendation with {
    short @Common.Label : 'Assessment Short Description'
};

