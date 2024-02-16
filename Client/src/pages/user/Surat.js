import React, { useState, useEffect } from "react";
import axios from "axios";
import logo from "../../Assets/diskominfo.png";
import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import "../../Components/SideBar/Navbar.css";
import './Surat.css'; // Import file CSS terpisah untuk mengatur layout
import icon from "../../Assets/icon.png";
import jwt_decode from "jwt-decode"
import { useNavigate } from 'react-router-dom'
import { isUnauthorizedError }  from '../../config/errorHandling';

const Surat = () => {
  const [nama, setNama] = useState('');
  const navigate = useNavigate();
  const [username, setUserName] = useState('');
  useEffect(() => {
    refreshToken();
  })
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
  
    } catch (error) {
      if (isUnauthorizedError(error)){
        navigate('/');
    }
    }
  }


  const [formData, setFormData] = useState({
    first_name: "",
    last_name: "",
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({ ...formData, [name]: value });
  };

  const handleGenerateDocx = async () => {
    try {
      const response = await axios.post("http://localhost:3000/generateDocx", {
        data: formData,
      }, { withCredentials: true }); // Include credentials in the request

      if (response.data.success) {
        // File generated successfully, initiate download
        const downloadLink = document.createElement("a");
        downloadLink.href = `http://localhost:3000/${response.data.filePath}`;
        downloadLink.download = "output.docx";
        downloadLink.click();
      } else {
        console.error("Error generating file:", response.data.error);
      }
    } catch (error) {
      console.error("Error:", error.message);
    }
  };

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
          <nav className="nav">
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
          </nav>
        </div>
        <div className="pt-4 pb-4">
          <div className="homepage-container">
            <div>
              <h1>Surat Generator</h1>
              <div>
                <label>First Name:</label>
                <input type="text" name="first_name" onChange={handleInputChange} />
              </div>
              <div>
                <label>Last Name:</label>
                <input type="text" name="last_name" onChange={handleInputChange} />
              </div>
              <button onClick={handleGenerateDocx}>Generate Docx</button>
            </div>
            <div>
              <p>Selamat Datang, {nama}</p>
              <p
                style={{
                  fontSize: "15px",
                  marginTop: "5px",
                  borderTop: "1px solid #000000",
                }}
              >
                Username: {username}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Surat;
