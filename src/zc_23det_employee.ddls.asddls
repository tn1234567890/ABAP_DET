@EndUserText.label: 'Employee'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_23DET_EMPLOYEE
  provider contract transactional_query
  as projection on ZR_23DET_EMPLOYEE
{
  key EmployeeUuid,
      EmployeeNr,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      FirstName,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      LastName,
      EntryDate,
      
      /* Administrative Data */
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
        /* Transient Data */
      ApplicantName,
      
      
      
      /* Association */
      _Requests : redirected to composition child ZC_23DET_Vac_Req,
      _Demands : redirected to composition child ZC_23DET_Vac_Dem
}
