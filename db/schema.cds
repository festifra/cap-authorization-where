namespace authorization.where;

type MessageType : String(30) enum {
    systemMessage;
    systemLabel;
    message;
    label;
    valueList
};

using {
    managed,
    sap.common.Languages
} from '@sap/cds/common';

entity Messages : managed {
    key ID                  : String(50) not null;
    key typeMessage         : MessageType @assert.range;
        shortText           : localized String(100);
        longText            : localized String(1000);
        statusCode          : Integer64;
};

