*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***
${Base_URL}          https://thetestingworldapi.com/

*** Test Cases ***
TC_003_create_new_user
    Create Session          AddData    ${Base_URL}
    ${Student_Details} =    Create Dictionary    first_name=Venkata   middle_name=s     last_name=Bandi    date_of_birth=12/12/1980
    ${header}=    Create Dictionary    Content-Type=application/json    
    ${response}    POST On Session     AddData    api/studentsDetails    data=${Student_Details}    headers=${header}
    
    # Log status code and response content for debugging
    Log To Console    Status Code: ${response.status_code}
    Log To Console    Response Content: ${response.content}
