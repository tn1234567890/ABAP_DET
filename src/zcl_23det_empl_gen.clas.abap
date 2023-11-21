CLASS zcl_23det_empl_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_23DET_EMPL_GEN IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA employees TYPE TABLE OF z23det_employee.
    DATA employee TYPE z23det_employee.
    DATA requests TYPE TABLE OF z23det_vac_req.
    DATA request TYPE z23det_vac_req.
    DATA demands TYPE TABLE OF z23det_vac_dem.
    DATA demand TYPE z23det_vac_dem.


    DELETE FROM z23det_employee.
    DELETE FROM z23det_vac_req.
    DELETE FROM z23det_vac_dem.

    "Admin Data für Employees
    employee-client = sy-mandt.
    employee-created_by = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.

    "Admin Data für Requests
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    GET TIME STAMP FIELD request-last_changed_at.

    "Admin Data für Demands
    demand-client = sy-mandt.
    demand-created_by = 'GENERATOR'.
    demand-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD demand-created_at.
    GET TIME STAMP FIELD demand-last_changed_at.

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "Create Employee: Hans Maier(1)

    employee-employee_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000001'.
    employee-first_name = 'Hans'.
    employee-last_name = 'Maier'.
    employee-entry_date = '20000501'.
    APPEND employee TO employees.

    "Vacation Requests

    request-applicant = employee-employee_uuid.
    request-approver = 'Lisa' && 'Müller'.
    request-start_date = '20220701'.
    request-end_date = '20220710'.
    request-requst_uuid = cl_system_uuid=>create_uuid_x16_static(  ). "employee-employee_id. Frage: UUID oder gleiche ID wie employee?
    request-employee_uuid = employee-employee_uuid.
    "request-request_id = '00010'.
    "request-employee_uuid = employee-
    request-req_comment = 'Sommerurlaub'.
    request-status = 'G'.
    APPEND request TO requests.

    request-applicant = employee-employee_uuid.
    request-approver = 'Lisa' && 'Müller'.
    request-start_date = '20221227'.
    request-end_date = '20221230'.
    request-requst_uuid = cl_system_uuid=>create_uuid_x16_static(  ). "employee-employee_id. Frage: UUID oder gleiche ID wie employee?
    request-employee_uuid = employee-employee_uuid.
    "request-request_id = '00011'.
    request-req_comment = 'Weihnachtsurlaub'.
    request-status = 'A'.
    APPEND request TO requests.

    request-applicant = employee-employee_uuid.
    request-approver = 'Lisa' && 'Müller'.
    request-start_date = '20221228'.
    request-end_date = '20221230'.
    request-requst_uuid = cl_system_uuid=>create_uuid_x16_static(  ). "employee-employee_id. Frage: UUID oder gleiche ID wie employee?
    request-employee_uuid = employee-employee_uuid.
    "request-request_id = '00012'.
    request-req_comment = 'Weihnachtsurlaub (2.Versuch)'.
    request-status = 'G'.
    APPEND request TO requests.

    request-applicant = employee-employee_uuid.
    request-approver = 'Lisa' && 'Müller'.
    request-start_date = '20230527'.
    request-end_date = '20230614'.
    request-requst_uuid = cl_system_uuid=>create_uuid_x16_static(  ). "employee-employee_id. Frage: UUID oder gleiche ID wie employee?
    request-employee_uuid = employee-employee_uuid.
    "request-request_id = '00013'.
    request-req_comment = ''.
    request-status = 'G'.
    APPEND request TO requests.

    request-applicant = employee-employee_uuid.
    request-approver = 'Lisa' && 'Müller'.
    request-start_date = '20231220'.
    request-end_date = '20231231'.
    request-requst_uuid = cl_system_uuid=>create_uuid_x16_static(  ). "employee-employee_id. Frage: UUID oder gleiche ID wie employee?
    request-employee_uuid = employee-employee_uuid.
    "request-request_id = '00014'.
    request-req_comment = 'Winterurlaub'.
    request-status = 'B'.
    APPEND request TO requests.

    "Vacation Demands

    demand-employee_uuid = employee-employee_uuid.
    demand-dem_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    demand-curr_year = '2022'.
    demand-vac_days = '30'.
    APPEND demand TO demands.

    demand-employee_uuid = employee-employee_uuid.
    demand-dem_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    demand-curr_year = '2023'.
    demand-vac_days = '30'.
    APPEND demand TO demands.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Create Employee: Lisa Müller(2)

    employee-employee_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000002'.
    employee-first_name = 'Lisa'.
    employee-last_name = 'Müller'.
    employee-entry_date = '20100701'.
    APPEND employee TO employees.

    "Vacation Demand

    demand-employee_uuid = employee-employee_uuid.
    demand-dem_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    demand-curr_year = '2023'.
    demand-vac_days = '30'.
    APPEND demand TO demands.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Create Employee: Petra Schmid(3)

    employee-employee_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000003'.
    employee-first_name = 'Petra'.
    employee-last_name = 'Schmid'.
    employee-entry_date = '20221001'.
    APPEND employee TO employees.

    "Vacation Request

    request-applicant = employee-employee_uuid.
    request-approver = 'Hans' && 'Maier'.
    request-start_date = '20231227'.
    request-end_date = '20231231'.
    request-requst_uuid = cl_system_uuid=>create_uuid_x16_static(  ). "employee-employee_id. Frage: UUID oder gleiche ID wie employee?
    request-employee_uuid = employee-employee_uuid.
    "request-request_id = '00001'.
    request-req_comment = 'Weihnachtsurlaub'.
    request-status = 'B'.
    APPEND request TO requests.

    "Vacation Demand

    demand-employee_uuid = employee-employee_uuid.
    demand-dem_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    demand-curr_year = '2023'.
    demand-vac_days = '7'.
    APPEND demand TO demands.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    INSERT z23det_employee FROM TABLE @employees.
    INSERT z23det_vac_req FROM TABLE @requests.
    INSERT z23det_vac_dem FROM TABLE @demands.


  ENDMETHOD.
ENDCLASS.
