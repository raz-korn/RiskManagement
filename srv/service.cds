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
}

annotate RiskManagement2Service with @requires :
[
    'authenticated-user'
];
