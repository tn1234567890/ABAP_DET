@EndUserText.label: 'Employee'
@AccessControl.authorizationCheck: #NOT_REQUIRED

@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_23DET_EMPLOYEE
  as projection on ZR_23DET_EMPLOYEE
{
  key EmployeeId,
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
      LastChangedAt
}
