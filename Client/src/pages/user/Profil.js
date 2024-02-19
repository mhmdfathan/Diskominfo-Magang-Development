import React, { useState, useEffect } from "react";
import axios from "axios";
import logo from "../../Assets/diskominfo.png";
import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import "../../Components/SideBar/Navbar.css";
import './Profil.css'; // Import file CSS terpisah untuk mengatur layout
import icon from "../../Assets/icon.png";
import jwt_decode from "jwt-decode"
import { useNavigate } from 'react-router-dom'
import { isUnauthorizedError }  from '../../config/errorHandling';

const Profil = () => {
  const [nama, setNama] = useState('');
  const navigate = useNavigate();
  const [username, setUserName] = useState('');
  const [asal_univ, setAsalUniv] = useState('');
  const [asal_jurusan, setAsalJurusan] = useState('');
  const [no_telp, setNoTelp] = useState('');

  useEffect(() => {
    refreshToken();
  }, []);

  const refreshToken = async () => {
    try {
      const response = await axios.get('http://localhost:3000/account/token',{
        headers: {
          'role': "peserta_magang"
        }
      });
      const decoded = jwt_decode(response.data.token);
      setNama(decoded.nama);
      setUserName(decoded.username);
      setAsalUniv(decoded.asal_univ);
      setAsalJurusan(decoded.asal_jurusan);
      setNoTelp(decoded.no_telp);
    } catch (error) {
      if (isUnauthorizedError(error)){
        navigate('/');
      }
    }
  }

  return (
    <div className="body-main">
      <div className="body-area body-pd">
        <header className="header">
          <div className="header_img">
            <img
              src={icon}
              alt=""
            />
          </div>
        </header>
        <div className="l-navbar show">
          <div className="nav">
            <div>
              <a
                href="/user/homepage"
                target="_self"
                className="nav_logo"
              >
                <img
                  src={logo}
                  alt=""
                  style={{ width: "120px", height: "auto" }}
                />
              </a>
              <div className="nav_list">
                <a href="homepage" className="nav_link">
                  <i className="bi bi-house nav_icon" />
                  <span className="nav_name">Home</span>
                </a>
                <a href="presensi/riwayat" target="_self" className="nav_link">
                  <i className="bi bi-card-checklist nav_icon" />
                  <span className="nav_name">History Presensi</span>
                </a>
                <a href="presensi" target="_self" className="nav_link">
                  <i className="bi bi-camera nav_icon" />
                  <span className="nav_name">Lakukan Presensi</span>
                </a>
                <a href="tugas" target="_self" className="nav_link">
                  <i className="bi bi-list-task nav_icon" />
                  <span className="nav_name">Penugasan</span>
                </a>
                <a href="surat" target="_self" className="nav_link">
                  <i className="bi bi-envelope nav_icon" />
                  <span className="nav_name">Persuratan</span>
                </a>
              </div>
            </div>
            <a 
              href="profil" 
              target="_self" 
              className="nav_link">
              <i className="bi bi-person nav_icon"></i>
              <span className="nav_name">Profil</span>
            </a>
            <a
              href="/"
              target="_self"
              className="nav_link"
            >
              <i className="bi bi-box-arrow-left nav_icon" />
              <span className="nav_name">SignOut</span>
            </a>
          </div>
        </div>
        <div className="pt-4 pb-4">
          <div className="homepage-container">
            <div>
              <h2>Profil Pengguna</h2>
              <p><strong>Selamat Datang, {nama}</strong></p>
              <p><strong>Username:</strong> {username}</p>
              <p><strong>Asal Universitas:</strong> {asal_univ}</p>
              <p><strong>Asal Jurusan:</strong> {asal_jurusan}</p>
              <p><strong>Nomor Telepon:</strong> {no_telp}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Profil;
