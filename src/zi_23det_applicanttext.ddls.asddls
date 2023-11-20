@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Applicant Text'

define view entity ZI_23DET_ApplicantText as select from z23det_employee
{
    key employee_uuid as EmployeeUuid,
    key employee_id as EmployeeId,
    first_name as FirstName,
    last_name as LastName,
    
    concat_with_space(first_name, last_name, 1) as Name
    
}
