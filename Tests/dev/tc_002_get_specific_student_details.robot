*** Settings ***
Library    RequestsLibrary

*** Variables ***
${Base_URL}    https://thetestingworldapi.com/
${StudentID}    10

*** Test Cases ***
TC_002_get_student_details
    Create Session    FetchData    ${Base_URL} 
    ${response}    GET On Session   FetchData    api/studentsDetails/${StudentID}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

   

