import React, { useEffect, useState } from 'react';
import { getWebContent } from '../api';

const WebContent = () => {
  const [content, setContent] = useState(null);

  useEffect(() => {
    const fetchContent = async () => {
      const data = await getWebContent();
      setContent(data.message);
    };

    fetchContent();
  }, []);

  return <div>{content ? content : 'Loading...'}</div>;
};

export default WebContent;