import { styled, alpha } from '@mui/material/styles';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import IconButton from '@mui/material/IconButton';
import Typography from '@mui/material/Typography';
import InputBase from '@mui/material/InputBase';
import MenuIcon from '@mui/icons-material/Menu';
import SearchIcon from '@mui/icons-material/Search';
import React, { useEffect, useState } from 'react';

import Paper from '@mui/material/Paper';
import { Button, Container, Table } from '@mui/material';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import TableCell from '@mui/material/TableCell';
import TableBody from '@mui/material/TableBody';

import Members from './Members';
import { Link } from 'react-router-dom';

const Search = styled('div')(({ theme }) => ({
  position: 'relative',
  borderRadius: theme.shape.borderRadius,
  backgroundColor: alpha(theme.palette.common.white, 0.15),
  '&:hover': {
    backgroundColor: alpha(theme.palette.common.white, 0.25),
  },
  marginLeft: 0,
  width: '100%',
  [theme.breakpoints.up('sm')]: {
    marginLeft: theme.spacing(1),
    width: 'auto',
  },
}));

const SearchIconWrapper = styled('div')(({ theme }) => ({
  padding: theme.spacing(0, 2),
  height: '100%',
  position: 'absolute',
  pointerEvents: 'none',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
}));

const StyledInputBase = styled(InputBase)(({ theme }) => ({
  color: 'inherit',
  '& .MuiInputBase-input': {
    padding: theme.spacing(1, 1, 1, 0),
    // vertical padding + font size from searchIcon
    paddingLeft: `calc(1em + ${theme.spacing(4)})`,
    transition: theme.transitions.create('width'),
    width: '100%',
    [theme.breakpoints.up('sm')]: {
      width: '12ch',
      '&:focus': {
        width: '20ch',
      },
    },
  },
}));
const MemberTool = () => {
  const members = [
    {
      id: 1,
      image: '/img/하마베미나미1.gif',
      name: '하마베 미나미',
      birthday: '2000년',
      gender: '여',
      email: '몰라',
    },
  ];

  const [searchKeyWord, setSearchKeyWord] = useState('');

  //   useEffect(() => {
  //     // db 연동
  //     loadData();
  //   });

  //   const loadData = async () => {
  //     await axois
  //       .get('url')
  //       .then((response) => {
  //         setCustomers(response.data);
  //       })
  //       .catch((err) => console.error(err.message));
  //   };

  const handleValueChange = (e) => {
    setSearchKeyWord(e.target.value);
  };

  const filteredComponents = (data) => {
    data = data.filter((c) => {
      console.log('===', c.name);
      return c.name.indexOf(searchKeyWord) > -1;
    });

    console.log('data===', data);

    return data.map((c) => {
      return (
        <Members
          key={c.id}
          id={c.id}
          image={c.image}
          name={c.name}
          birthday={c.birthday}
          gender={c.gender}
          email={c.email}
        />
      );
    });
  };

  return (
    <Container>
      <Box sx={{ flexGrow: 1 }}>
        <AppBar position='static'>
          <Toolbar>
            <Typography
              variant='h6'
              noWrap
              component='div'
              sx={{ flexGrow: 1, display: { xs: 'none', sm: 'block' } }}
            >
              고객 관리 시스템
            </Typography>
            <Link to='/'>
              <Button variant='contained' size='large' color='success'>
                관리 홈으로
              </Button>
            </Link>
            <Search>
              <SearchIconWrapper>
                <SearchIcon />
              </SearchIconWrapper>
              <StyledInputBase
                placeholder='Search…'
                inputProps={{ 'aria-label': 'search' }}
                value={searchKeyWord}
                onChange={handleValueChange}
              />
            </Search>
          </Toolbar>
        </AppBar>
      </Box>
      <div
        style={{
          width: '100%',
          height: '30px',
          justifyContent: 'center',
          display: 'flex',
          marginTop: '10px',
          marginBottom: '10px',
        }}
      ></div>

      <Paper>
        <Table sx={{ minwidth: 650 }}>
          <TableHead>
            <TableRow>
              <TableCell>id</TableCell>
              <TableCell>image</TableCell>
              <TableCell>name</TableCell>
              <TableCell>birthday</TableCell>
              <TableCell>gender</TableCell>
              <TableCell>email</TableCell>
              <TableCell>delete</TableCell>
            </TableRow>
          </TableHead>

          <TableBody>
            {members ? (
              filteredComponents(members)
            ) : (
              <TableRow>
                <TableCell colSpan='7' variant='determinate'>
                  검색 결과 없음
                </TableCell>
              </TableRow>
            )}

            {/* {customers.map((c) => {
              return (
                <Customer
                  key={c.id}
                  id={c.id}
                  image={c.image}
                  name={c.name}
                  birthday={c.birthday}
                  gender={c.gender}
                  email={c.email}
                />
              );
            })} */}
          </TableBody>
        </Table>
      </Paper>
    </Container>
  );
};

export default MemberTool;
