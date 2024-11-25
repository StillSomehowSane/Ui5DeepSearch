using WorkbenchPlus as service from '../../srv/service';
annotate service.Notification with @(
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
                Label : 'start_date',
                Value : start_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'end_date',
                Value : end_date,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Assigned Recommendations',
            ID : 'AssignedRecommendations',
            Target : 'linked_recommendation/@UI.LineItem#AssignedRecommendations',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Display Id',
            Value : display_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Start Date',
            Value : start_date,
        },
        {
            $Type : 'UI.DataField',
            Label : 'End Date',
            Value : end_date,
        },
        {
            $Type : 'UI.DataField',
            Value : linked_recommendation.display_id,
            Label : 'Recommendation Display Id',
        },
        {
            $Type : 'UI.DataField',
            Value : linked_recommendation.type,
            Label : 'Recommendation Type',
        },
    ],
    UI.SelectionFields : [
        linked_recommendation.display_id,
    ],
);

annotate service.Recommendation with @(
    UI.LineItem #AssignedRecommendations : [
        {
            $Type : 'UI.DataField',
            Value : display_id,
            Label : 'display_id',
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : notification_ID,
            Label : 'notification_ID',
        },
        {
            $Type : 'UI.DataField',
            Value : type,
            Label : 'type',
        },
    ]
);

annotate service.Recommendation with {
    display_id @Common.Label : 'linked_recommendation/display_id'
};

