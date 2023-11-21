@EndUserText.label: 'Vacation Demand'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_23DET_Vac_Dem
  as projection on ZR_23DET_Vac_Dem
{
  key DemUuid,
      EmployeeUuid,
      CurrYear,
      VacDays,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,

      /* Associations */
      _Employee : redirected to parent ZC_23DET_EMPLOYEE
}
