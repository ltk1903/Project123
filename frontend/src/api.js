import axios from 'axios';

const API_URL = 'http://localhost:3000/api/v1';

export const getWebContent = async () => {
  const response = await axios.get(`${API_URL}/web_content`);
  return response.data;
};
