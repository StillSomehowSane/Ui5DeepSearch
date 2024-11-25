namespace com.asint.test;

entity Recommendation {
    key ID               : UUID;
        display_id       : String(100);
        type             : String(100);
        notification     : Association to one Notification;
        maintenanceOrder : Association to many MaintenanceOrder
                               on maintenanceOrder.recommendation = $self;
        assessment       : Association to one Assessment
                               on assessment.linked_recommendation = $self;
}

entity Notification {
    key ID                    : UUID;
        display_id            : String(100);
        start_date            : DateTime;
        status                : String(100);
        end_date              : DateTime;
        linked_recommendation : Association to many Recommendation
                                    on linked_recommendation.notification = $self;
}

entity MaintenanceOrder {
    key ID                : UUID;
        display_id        : String(100);
        start_date        : DateTime;
        end_date          : DateTime;
        recommendation_ID : type of Recommendation : ID;
        recommendation    : Association to many Recommendation
                                on recommendation.ID = recommendation_ID;
}

entity Assessment {
    key ID                    : UUID;
        display_id            : String(100);
        risk_fields           : String(500);
        to_description        : Composition of one ObjectDescription
                                    on to_description.assessment = $self;
        linked_recommendation : Association to one Recommendation;
}

entity ObjectDescription {
    key ID         : UUID;
        short      : String(100);
        long       : String(500);
        language   : String(2);
        assessment : Association to one Assessment;
}
