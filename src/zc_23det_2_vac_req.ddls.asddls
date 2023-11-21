@EndUserText.label: '2 Vacation Request'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_23DET_2_Vac_Req
  as projection on ZR_23DET_2_Vac_Req
{
  key RequstUuid,
      EmployeeUuid,
      RequestId,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_23DET_ApplicantVH', element: 'EmployeeUuid' } }]
      Applicant,
      Approver,
      StartDate,
      EndDate,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      ReqComment,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_23DET_StatusVH', element: 'StatusText' } }]
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      StatusCriticality,
      StatusText
      /* Associations */
      
}
