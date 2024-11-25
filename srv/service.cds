using { com.asint.test as my } from '../db/schema.cds';

@path : '/service/WorkbenchPlus'
service WorkbenchPlus
{
    @odata.draft.enabled
    entity Recommendation as
        select r.ID,
            r.display_id,
            r.type,
            r.assessment,
            r.assessment.to_description.short,
            r.maintenanceOrder,
            r.notification from my.Recommendation as r;

    @odata.draft.enabled
    entity Notification as
        projection on my.Notification;

    @odata.draft.enabled
    entity MaintenanceOrder as
        projection on my.MaintenanceOrder;

    @odata.draft.enabled
    entity Assessment as 
        projection on my.Assessment;

    entity ObjectDescription as 
        projection on my.ObjectDescription;
}

annotate WorkbenchPlus with @requires :
[
    'authenticated-user'
];
