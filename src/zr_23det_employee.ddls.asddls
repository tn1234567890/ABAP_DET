@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZR_23DET_EMPLOYEE
  as select from z23det_employee
  //  composition of target_data_source_name as _association_name
{
  key employee_id     as EmployeeId,
      employee_nr     as EmployeeNr,
      first_name      as FirstName,
      last_name       as LastName,
      entry_date      as EntryDate,
      
      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt
      //  _association_name // Make association public
}
