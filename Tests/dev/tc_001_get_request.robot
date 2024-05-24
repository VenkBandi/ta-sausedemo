*** Settings ***
Library    RequestsLibrary

*** Variables ***
${Base_URL}    https://thetestingworldapi.com/

*** Test Cases ***
TC_001_get_request
    Create Session    Get_Student_Details    ${Base_URL} 
    ${response}    GET On Session   Get_Student_Details    api/studentsDetails 
    Should Be Equal As Numbers    ${response.status_code}    200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

