import React from 'react';
import { Outlet } from 'react-router-dom';
import Navbar from './components1/Navbar';

const LayoutWithNavbar = () => {
  return (
    <div>
      <Navbar />
      <Outlet />
    </div>
  );
};

export default LayoutWithNavbar;
