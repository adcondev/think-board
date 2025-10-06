import React, {useState} from 'react';
import ReactDOM from 'react-dom/client';
import axios from 'axios';

const apiBase = '/api';

async function getHello() {
    try {
        const response = await axios.get(`${apiBase}/`);
        return response.data;
    } catch (error) {
        // To help with debugging, log the error message and response data if available
        console.error('Error:', error.message, error.response?.data);
        return 'Error connecting to backend';
    }
}

function MyButton() {
    const [responseText, setResponseText] = useState('');

    const handleClick = async () => {
        const hello = await getHello();
        setResponseText(hello);
    };

    return (
        <div>
            <button onClick={handleClick}>
                I'm a button
            </button>
            {responseText && <p>{responseText}</p>}
        </div>
    );
}

function MyApp() {
    return (
        <div>
            <h1>Welcome to my React App</h1>
            <MyButton/>
        </div>
    );
}

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
    <React.StrictMode>
        <MyApp/>
    </React.StrictMode>
);
