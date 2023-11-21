@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZR_23DET_EMPLOYEE
  as select from z23det_employee
    composition [0..*] of ZR_23DET_Vac_Req as _Requests
    composition [0..*] of ZR_23DET_Vac_Dem as _Demands
    association [1..1] to ZI_23DET_ApplicantText as _ApplicantText on $projection.EmployeeUuid = _ApplicantText.EmployeeUuid
{
      @ObjectModel.text.element: ['ApplicantName']
  key employee_uuid   as EmployeeUuid,
      employee_nr     as EmployeeNr,
      first_name      as FirstName,
      last_name       as LastName,
      entry_date      as EntryDate,
      
      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
      
      /* Transient Data */
      _ApplicantText.Name as ApplicantName,
      
      /* Association */
      _Requests,
      _Demands // Make association public
}
