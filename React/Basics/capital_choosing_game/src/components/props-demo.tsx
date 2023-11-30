interface Person {
    name: string;
    url: string;
  }
  
  function Avatar({ person, size }: { person: Person; size?: number }) {
    return (
      <img
        className="avatar"
        src={person.url}
        alt={person.name}
        width={100}
        height={100}
      />
    );
  }
  
  const ProfileComponent = () => {
    return (
      <Avatar
        person={{ name: "mama mia", url: "https://i.imgur.com/1bX5QH6.jpg" }}
        size={100}
      />
    );
  };
  
  export default ProfileComponent;
  