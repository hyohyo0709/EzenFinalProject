import { styled, alpha } from '@mui/material/styles';
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';

import Typography from '@mui/material/Typography';
import InputBase from '@mui/material/InputBase';

import React, { useEffect, useState } from 'react';

import Paper from '@mui/material/Paper';
import {
  Button,
  Card,
  CardContent,
  Container,
  Divider,
  Stack,
  Table,
} from '@mui/material';

import { Link, Route, Routes } from 'react-router-dom';
import BookTool from './componets/BookTool';
import MemberTool from './componets/MemberTool';
import BookAdd from './componets/BookAdd';
import BookDataDelete from './componets/BookDataDelete';
import BookUpdate from './componets/BookUpdate';
import OrderTool from './componets/OrderTool';
import OrderStatusChange from './componets/OrderStatusChange';
import OrderDataDelete from './componets/OrderDataDelete';

const Item = styled(Paper)(({ theme }) => ({
  backgroundColor: theme.palette.mode === 'dark' ? '#1A2027' : '#fff',
  ...theme.typography.body2,
  padding: theme.spacing(1),
  textAlign: 'center',
  color: theme.palette.text.secondary,
}));

const App = () => {
  return (
    <div className='Container'>
      <Routes>
        <Route path='/' element={<Layout />} />
        <Route path='members' element={<MemberTool />}>
          <Route path='list' element={<MemberTool />} />
          <Route path='statuschange/:num' element={<MemberTool />} />
          <Route path='typechange/:num' element={<MemberTool />} />
        </Route>

        <Route path='books' element={<BookTool />}>
          <Route path='list' element={<BookTool />} />
          <Route path='statuschange/:num' element={<BookTool />} />
          <Route path='stockchange/:num' element={<BookTool />} />
          <Route path='newbooksave' element={<BookAdd />} />
          <Route path='deletdata/:num' element={<BookDataDelete />} />
          <Route path='updatebook' element={<BookUpdate />} />
          <Route path='selectone/:num' element={<BookUpdate />} />
        </Route>

        <Route path='orders' element={<OrderTool />}>
          <Route path='list' element={<OrderTool />} />
          <Route path='statuschange' element={<OrderStatusChange />} />
          <Route path='deletdata/:num' element={<OrderDataDelete />} />
        </Route>
      </Routes>
    </div>
  );
};

export default App;

function Layout() {
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
              관리자 모드
            </Typography>
          </Toolbar>
        </AppBar>
      </Box>
      <Card sx={{ minWidth: 275 }}>
        <CardContent>
          <Stack
            direction='row'
            divider={<Divider orientation='vertical' flexItem />}
            spacing={2}
          >
            <Item>
              <Link to='/members'>
                <Button variant='contained' size='large'>
                  회원 관리
                </Button>
              </Link>
            </Item>
            <Item>
              <Link to='/books'>
                <Button variant='contained' size='large'>
                  도서 관리
                </Button>
              </Link>
            </Item>
            <Item>
              <Link to='/orders'>
                <Button variant='contained' size='large'>
                  주문 관리
                </Button>
              </Link>
            </Item>
            <Item>
              <Button
                variant='contained'
                size='large'
                color='success'
                href='http://localhost:8090/'
              >
                메인 홈페이지로 이동
              </Button>
            </Item>
          </Stack>
        </CardContent>
      </Card>
    </Container>
  );
}
