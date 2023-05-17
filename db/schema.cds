namespace RiskManagement2;

using { ZGWSAMPLE_BASIC } from '../srv/external/ZGWSAMPLE_BASIC.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Risks : managed
{
    key ID : UUID
        @Core.Computed;
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : String(100);
    miti : Association to one Mitigations;
    supplier : Association to one ZGWSAMPLE_BASIC.BusinessPartnerSet;
}

entity Mitigations : managed
{
    key ID : UUID
        @Core.Computed;
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.miti = $self;
}
