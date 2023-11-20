@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vacation Request'
define view entity ZR_23DET_Vac_Req
  as select from z23det_vac_req
  association to parent ZR_23DET_EMPLOYEE as _Employee on $projection.EmployeeUuid = _Employee.EmployeeUuid
  association to ZI_23DET_Statustext as _StatusText on $projection.Status = _StatusText.Status
{
    
  key requst_uuid     as RequstUuid,
      employee_uuid   as EmployeeUuid,
      request_id      as RequestId,
      applicant       as Applicant,
      approver        as Approver,
      start_date      as StartDate,
      end_date        as EndDate,
      req_comment     as ReqComment,
      @ObjectModel.text.element: ['StatusText']
      status          as Status,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
      
      
      case status when 'A' then 1
                  when 'G' then 3
                  when 'B' then 0
                  else 0
      end                as StatusCriticality,
      
      /* Transient Data */
      _StatusText.StatusName as StatusText,
      
      /* Association */
      _Employee // Make association public
}
