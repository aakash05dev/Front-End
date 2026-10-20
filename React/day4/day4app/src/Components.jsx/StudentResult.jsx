import React, { useState } from 'react';

function StudentResult() {
  const [marks] = useState(75);

  let result = "";
  if (marks >= 90 && marks <= 100) {
    result = "Excellent";
  } else if (marks >= 60 && marks <= 89) {
    result = "Passed";
  } else if (marks >= 40 && marks <= 59) {
    result = "Needs Improvement";
  } else {
    result = "Failed";
  }

  return (
    <div className="result">
      <h3>Student Result</h3>
      <p>Marks: {marks}</p>
      <p>Result : {result}</p>
    </div>
  );
}

export default StudentResult;