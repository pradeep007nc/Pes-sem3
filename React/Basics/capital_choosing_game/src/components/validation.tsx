const Validation = ({email}: {email: string}) => {
  let validationError = "";

  if (!email) {
    validationError = "Please enter a valid email address.";
  } else if (!email.match(/.*@gmail\.com/)) {
    validationError = "Please enter a Gmail email address.";
  } else {
    validationError = "Email address is valid.";
  }

  return (
    <div>
      <p>
        Email: {email}
      </p>
      <p>
        Validation Error: {validationError}
      </p>
    </div>
  );
};

export default Validation;

