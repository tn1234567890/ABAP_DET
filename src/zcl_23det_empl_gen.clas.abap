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

    DELETE FROM z23det_employee.

    "Admin Data
    employee-client = sy-mandt.
    employee-created_by = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.

    "Create Employee
    employee-employee_id = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000001'.
    employee-first_name = 'Anna'.
    employee-last_name = 'Müller'.
    employee-entry_date = '20170415'.

    APPEND employee TO employees.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Create Employee
    employee-employee_id = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000002'.
    employee-first_name = 'Markus'.
    employee-last_name = 'Schmidt'.
    employee-entry_date = '20150903'.

    APPEND employee TO employees.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Create Employee
    employee-employee_id = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000003'.
    employee-first_name = 'Laura'.
    employee-last_name = 'Wagner'.
    employee-entry_date = '20181122'.

    APPEND employee TO employees.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Create Employee
    employee-employee_id = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000004'.
    employee-first_name = 'Micheal'.
    employee-last_name = 'Berger'.
    employee-entry_date = '20160710'.

    APPEND employee TO employees.

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    "Create Employee
    employee-employee_id = cl_system_uuid=>create_uuid_x16_static(  ).
    employee-employee_nr = '000005'.
    employee-first_name = 'Sarah'.
    employee-last_name = 'Keller'.
    employee-entry_date = '20191205'.

    APPEND employee TO employees.


    INSERT z23det_employee FROM TABLE @employees.




  ENDMETHOD.
ENDCLASS.
