import { TableCell, TableRow } from '@mui/material';
import React from 'react';

import Delete from '@mui/icons-material/Delete';

const Members = (props) => {
  return (
    <TableRow>
      <TableCell>{props.id}</TableCell>
      <TableCell>
        <img src={props.image} alt='profile' width='200px' />
      </TableCell>
      <TableCell>{props.name}</TableCell>
      <TableCell>{props.birthday}</TableCell>
      <TableCell>{props.gender}</TableCell>
      <TableCell>{props.email}</TableCell>
      <TableCell>
        <Delete />
      </TableCell>
    </TableRow>

    // <div>
    //   <CustomersProfiles id={props.id} image={props.image} name={props.name} />
    //   <CustomerInfo
    //     birthday={props.birthday}
    //     gender={props.gender}
    //     email={props.email}
    //   />
    // </div>
  );
};

// const CustomersProfiles = (props) => {
//   return (
//     <div>
//       <p>{props.id}</p>
//       <img src={props.image} alt='profile' />
//       <p>{props.name}</p>
//     </div>
//   );
// };

// const CustomerInfo = (props) => {
//   return (
//     <div>
//       <p>{props.birthday}</p>
//       <p>{props.gender}</p>
//       <p>{props.email}</p>
//     </div>
//   );
// };

export default Members;
