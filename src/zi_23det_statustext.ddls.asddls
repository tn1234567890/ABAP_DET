
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status Text'

define view entity ZI_23DET_Statustext as select from ZI_23DET_StatusVH
{
    key domain_name,
    key value_position,
    key language,
    Status,
    StatusText,
    
    concat_with_space(StatusText, Status, 1) as StatusName
    
}
