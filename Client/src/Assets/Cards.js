import './card.css';
import React, { useState } from 'react';
import Button from 'react-bootstrap/Button';
import { axiosJWTuser } from '../config/axiosJWT';
import axios from 'axios';
import jwt_decode from "jwt-decode"
import 'react-toastify/dist/ReactToastify.css'
import { ToastContainer, toast } from 'react-toastify';
import { showSuccessNotification } from '../Components/User/toastSuccess';
import { Modal } from 'react-bootstrap';

const Cards = ({ data }) => {
  const colors = [
    "#FF5733", "#FFC300", "#85C1E9", "#D2B4DE", "#48C9B0", "#3B667E", "#3B7E76", "#275C33", "#8D9B37", "#AF642D",
    "#9E2D2D", "#851666", "#FFD1DC", "#FFABAB", "#FFC3A0", "#FF677D", "#D4A5A5", "#DAC4FF", "#9A8C98", "#B5EAD7",
    "#A2D2FF", "#FFE156", "#FF6F61", "#6A0572", "#FFC857", "#1A508B", "#E71D36", "#FF9F1C", "#00BFB2", "#2EC4B6",
    "#FFD700", "#8338EC",
  ];

  const randomNumber = Math.floor(Math.random() * 32);

  function formatDueDate(inputDate) {
    const date = new Date(inputDate);
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    const seconds = String(date.getSeconds()).padStart(2, '0');

    return day + '-' + month + "-" + year + ' ' + hours + ':' + minutes + ':' + seconds;
  }

  const [isModalOpen, setModalOpen] = useState(false);
  const [selectedTaskID, setSelectedTaskID] = useState(null);
  const [file, setFile] = useState()

  function hadleFile(event) {
    setFile(event.target.files[0])
    console.log(event.target.files[0])
  }

  const handleCardClick = (taskID) => {
    setSelectedTaskID(taskID);
    setModalOpen(true);
  };

  const handleCloseModal = () => {
    setSelectedTaskID(null);
    setModalOpen(false);
  };

 
  const uploadFile = async () => {
    try {
      const ambilid = await axios.get('http://localhost:3000/account/token', {
        headers: {
          'role': "peserta_magang"
        },
      });
      const decoded = jwt_decode(ambilid.data.token);

      const formData = new FormData();
      formData.append('image', file);

      const response = await axiosJWTuser.patch(`http://localhost:3000/user/tugas/${decoded.userId}/submit/${selectedTaskID}`, formData);
      console.log('Server Response:', response.data);
      showSuccessNotification("Berhasil Submit Gambar")
      handleCloseModal()
    } catch (error) {
      console.error('Error:', error);
      window.alert("Gagal Submit Gambar")
    }
  }
const footer = data.tugas.statu_pengerjaan ? formatDueDate(data.tugas.dueDate) : "Submited"

  return (
    <div className="card" style={{ maxWidth: '300px', cursor:"pointer"}} onClick={() => handleCardClick(data.tugas.id)} c >
      <h2
        className="card-body"
        style={{ backgroundColor: colors[randomNumber] }}
        
      >
        {data.tugas.judul}
      </h2>
      <p>{data.tugas.tugas_url}</p>
      <div className="deadline">{footer}</div>

      {isModalOpen && (
        <Modal show={isModalOpen} onHide={handleCloseModal} centered={true} style={{zIndex: 1050 }} >
        <Modal.Header>
          <Modal.Title>Submit Tugas</Modal.Title>
        </Modal.Header>
        <Modal.Body>
        <div style={{ height: "100px", display: "flex", justifyContent: "center", alignItems: "center" }}>
        <input type='file' name='image' accept="image/jpeg, image/png" onChange={hadleFile} />
      </div>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" href='tugas'>
            Cancel
          </Button>
          <Button variant="primary" onClick={uploadFile}>
            Save Changes
          </Button>
        </Modal.Footer>
      </Modal>

  // <div className="modal-container">
  //   <div className="modal-content">
  //     <span className="close" onClick={handleCloseModal}>
  //       &times;
  //     </span>
  //     <h2 style={{ textAlign: "center", borderBottom: "1px solid #000000", fontSize: "20px" }}>Submit for Task {selectedTaskID}</h2>
  //     <div style={{ height: "100px", display: "flex", justifyContent: "center", alignItems: "center" }}>
  //       <input type='file' name='image' accept="image/jpeg, image/png" onChange={hadleFile} />
  //     </div>
  //     {/* Close button on the left */}
  //     <Button variant="danger" onClick={handleCloseModal}>
  //       Close
  //     </Button>
  //     <Button variant="primary" onClick={uploadFile}>
  //       Save Changes
  //     </Button>
  //   </div>
  // </div>
)}

    </div>
  );
};

export default Cards;