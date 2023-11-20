@EndUserText.label: 'Vacation Request'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_23DET_Vac_Req
  as projection on ZR_23DET_Vac_Req
{
    key RequstUuid,
    EmployeeUuid,
    RequestId,
    Applicant,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_23DET_ApproverVH', element: 'EmployeeUuid' } }]
    Approver,
    StartDate,
    EndDate,
    ReqComment,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_23DET_StatusVH', element: 'StatusText' } }]
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
    /* Transient Data*/
    StatusCriticality,
    StatusText,
    
    /* Associations */
    _Employee : redirected to parent ZC_23DET_EMPLOYEE
}
