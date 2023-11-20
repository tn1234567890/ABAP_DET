@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Approver'


define view entity ZI_23DET_ApproverVH as select from z23det_employee
{
    key employee_uuid as EmployeeUuid,
    key employee_id as EmployeeId,
    first_name as FirstName,
    last_name as LastName,
    entry_date as EntryDate
}
