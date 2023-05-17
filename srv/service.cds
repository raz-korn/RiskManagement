using { ZGWSAMPLE_BASIC } from './external/ZGWSAMPLE_BASIC.cds';

using { RiskManagement2 as my } from '../db/schema';

using RiskManagement2 from '../db/schema';

@path : 'service/RiskManagement2'
service RiskManagement2Service
{
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Mitigations as
        projection on my.Mitigations;

    entity BusinessPartnerSet as
        projection on ZGWSAMPLE_BASIC.BusinessPartnerSet;
}

annotate RiskManagement2Service with @requires :
[
    'authenticated-user'
];
